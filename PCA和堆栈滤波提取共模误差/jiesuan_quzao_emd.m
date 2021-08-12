%EMD分解程序

%E方向分解为IMF分量
P=PU(:,1);%坐标时间序列变量
epoch=3652;%观测历元数

imf=emd(P);

[m,~]=size(imf);
imfNumber=m;

%计算相关系数
 for i=1:imfNumber
             z=corrcoef(P,imf(i,:)');%中间变量 
             correlation_imf(1,i)=z(1,2);%相关系数
 end

 clear i
 
 disp(correlation_imf(1,:));
%融合含噪声分量
 n=input('输入相关系数极值位置：');
 
%有bug
%   xinzao_imf(1,epoch)=0;%行
%  for i=1:(n+1)
%     xinzao_imf(1,:)=xinzao_imf(1,:)+imf(i,:);
%  end
 xinzao_imf(1,:)=sum(imf(1:(n+1),:));

 %小波去噪
WD_xinzao_imf=wdden2( xinzao_imf(1,:)',3,'db8','s');%越小越为粗略光滑

%恢复信号
%  clear_P=P(:,1)-xinzao_imf(1,:)'+WD_xinzao_imf(:,1);
yu_imf(1,:)=sum(imf((n+2):imfNumber,:));
clear_P=yu_imf(1,:)'+WD_xinzao_imf(:,1);
 
%测试
 plot(1:3652,P(:,1),'k',1:3652,clear_P,'y');
 
 clear epoch imf imfNumber m n WD_xinzao_imf xinzao_imf yu_imf z
 


