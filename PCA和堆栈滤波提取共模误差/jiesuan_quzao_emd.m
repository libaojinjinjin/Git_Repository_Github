%EMD�ֽ����

%E����ֽ�ΪIMF����
P=PU(:,1);%����ʱ�����б���
epoch=3652;%�۲���Ԫ��

imf=emd(P);

[m,~]=size(imf);
imfNumber=m;

%�������ϵ��
 for i=1:imfNumber
             z=corrcoef(P,imf(i,:)');%�м���� 
             correlation_imf(1,i)=z(1,2);%���ϵ��
 end

 clear i
 
 disp(correlation_imf(1,:));
%�ںϺ���������
 n=input('�������ϵ����ֵλ�ã�');
 
%��bug
%   xinzao_imf(1,epoch)=0;%��
%  for i=1:(n+1)
%     xinzao_imf(1,:)=xinzao_imf(1,:)+imf(i,:);
%  end
 xinzao_imf(1,:)=sum(imf(1:(n+1),:));

 %С��ȥ��
WD_xinzao_imf=wdden2( xinzao_imf(1,:)',3,'db8','s');%ԽСԽΪ���Թ⻬

%�ָ��ź�
%  clear_P=P(:,1)-xinzao_imf(1,:)'+WD_xinzao_imf(:,1);
yu_imf(1,:)=sum(imf((n+2):imfNumber,:));
clear_P=yu_imf(1,:)'+WD_xinzao_imf(:,1);
 
%����
 plot(1:3652,P(:,1),'k',1:3652,clear_P,'y');
 
 clear epoch imf imfNumber m n WD_xinzao_imf xinzao_imf yu_imf z
 


