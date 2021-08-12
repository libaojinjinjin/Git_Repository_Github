%提取趋势项与残差
P=PU(:,1);

%设置图表日期显示
xnum=datenum(riqixulie);

imf=emd(P);

[m,~]=size(imf);
imfNumber=m;

for i=1:imfNumber
    subplot(imfNumber,1,i);
    plot(xnum(:,1),imf(i,:));
    datetick('x','yyyy');
end

 n=input('输入趋势项起始位置：');
 
 qushixiang=sum(imf(n:imfNumber,:));
 cancha=P-qushixiang';
 
 %绘制原始，趋势项与残差
 plot(xnum(:,1),P,'k',xnum(:,1),cancha(:,1),'g',xnum(:,1),qushixiang(1,:),'y')
 datetick('x','yyyy');
  
 %提取周年项
 for i=1:imfNumber
    subplot(imfNumber,1,i);
    plot(xnum(:,1),imf(i,:));
    datetick('x','yyyy');
end

 n1=input('输入周年项起始位置：');
 n2=input('输入周年项结束位置：');
 
 zhounianxiang=sum(imf(n1:n2,:));
 
 %绘制原始去噪后、周期项、趋势项
  figure;
  plot(xnum(:,1),cancha(:,1),'k',xnum(:,1),zhounianxiang(1,:),'r')
  datetick('x','yyyy');
  grid on;
  
  %绘制原始去噪后、周期项+趋势项
  figure;
  plot(xnum(:,1),P,'k',xnum(:,1),zhounianxiang(1,:)+qushixiang(1,:),'r');
  datetick('x','yyyy');
  grid on;
 
  clear n1 n2 i m n 