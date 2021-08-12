%功率谱密度程序

stationNumber=7;%第几测站  10            6 8
m_H=1;%数据频率

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%E方向三种算法
%计算功率谱密度
%E方向
for i=1:stationNumber*3
    resi=ySTK_dtr(:,i);%针对单个测站而言
    [PP_PE_s0(:,i), PP_PE_F(:,i),fshift]=psd(resi,m_H);
    %横坐标取对数
    psd_Ex(:,i)=log10(PP_PE_F(1:fshift,i))';%fshit是x、y长度
    %纵坐标取对数
    psd_Ey(:,i)=log10(PP_PE_s0(1:fshift,i))';
end
    clear resi PP_PE_s0 PP_PE_F


%
%绘图
% figure;
% plot(psd_E(:,1),psd_E(:,2),'k');


