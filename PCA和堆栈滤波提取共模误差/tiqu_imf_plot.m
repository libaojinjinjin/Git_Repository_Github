%��ȡ��������в�

%����ͼ��������ʾ
xnum=datenum(riqixulie);

imf=emd(clear_P);

[m,~]=size(imf);
imfNumber=m;

for i=1:imfNumber
    subplot(imfNumber,1,i);
    plot(xnum(:,1),imf(i,:));
    datetick('x','yyyy');
end

 n=input('������������ʼλ�ã�');
 
 qushixiang=sum(imf(n:imfNumber,:));
 cancha=clear_P-qushixiang';
 
 %����ԭʼ����������в�
 plot(xnum(:,1),clear_P,'k',xnum(:,1),cancha(:,1),'g',xnum(:,1),qushixiang(1,:),'y')
 datetick('x','yyyy');
  
 %��ȡ������
 for i=1:imfNumber
    subplot(imfNumber,1,i);
    plot(xnum(:,1),imf(i,:));
    datetick('x','yyyy');
end

 n1=input('������������ʼλ�ã�');
 n2=input('�������������λ�ã�');
 
 zhounianxiang=sum(imf(n1:n2,:));
 
 %����ԭʼȥ��������������
  figure;
  plot(xnum(:,1),clear_P,'k',xnum(:,1),zhounianxiang(1,:),'r',xnum(:,1),qushixiang(1,:),'g',xnum(:,1),cancha(:,1))
  datetick('x','yyyy');
  grid on;
  
  %����ԭʼȥ���������+������
  figure;
  plot(xnum(:,1),clear_P,'k',xnum(:,1),zhounianxiang(1,:)+qushixiang(1,:),'r');
  datetick('x','yyyy');
  grid on;
 
  clear n1 n2 i m n 