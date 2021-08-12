%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% stationNumber=10;
% 
% for i=1:stationNumber   
%     figure;
%     mid_xy=sum(PE_x(:,i)~=0);%有效数据长度
%     plot(1:mid_xy,PE_y(1:mid_xy,i),'k',1:3652,interp1_PE(1:3652,i),'r')
% end
% 
% for i=1:stationNumber   
%     figure;
%     mid_xy=sum(PN_x(:,i)~=0);%有效数据长度
%     plot(1:mid_xy,PN_y(1:mid_xy,i),'k',1:3652,interp1_PN(1:3652,i),'r')
% end
% 
% for i=1:stationNumber   
%     figure;
%     mid_xy=sum(PU_x(:,i)~=0);%有效数据长度
%     plot(1:mid_xy,PU_y(1:mid_xy,i),'k',1:3652,interp1_PU(1:3652,i),'r')
% end
% 
% clear stationNumber
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
stationNumber=10;
%绘制干净时间序列
for i=1:stationNumber   
    figure;
    plot(1:3652,PE(:,i),'r')
end

for i=1:stationNumber   
    figure;
    plot(1:3652,PN(:,i),'r')
end

for i=1:stationNumber   
    figure;
    plot(1:3652,PU(:,i),'r')
end

clear i stationNumber
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% stationNumber=10;
% epoch=7200;
% 
% for i=1:stationNumber   
%     figure;
%     plot(1:epoch,PE(:,i),'k',1:epoch,clear_PE(:,i),'r')
% end
% 
% for i=1:stationNumber   
%     figure;
%     plot(1:epoch,PN(:,i),'k',1:epoch,clear_PN(:,i),'r')
% end
% 
% for i=1:stationNumber   
%     figure;
%     plot(1:epoch,PU(:,i),'k',1:epoch,clear_PU(:,i),'r')
% end
% 
% clear stationNumber
