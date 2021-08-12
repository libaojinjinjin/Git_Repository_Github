%绘制GNSS残差时间系列曲线程序
%内部准备数据epoch stationNumber，外部准备数据PE PN PU 

epoch=3600;%历元数
stationNumber=10;%测站数

threeStationNumber=3*stationNumber;%ENU三方向测站数
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%以下是计算各测站原始的残差时间系列

%合并变量
P=[PE PN PU];

%创建datain
M=P;%中间变量

for i=1:threeStationNumber
    datain_name=['PP_datain_',num2str(i)];%创建变量名

    middle_name(:,1)=1:epoch;%中间变量名
    middle_name(:,2)=M(:,i);
    
    eval([datain_name,'=middle_name']);%括号内字符串视为语句执行
end   
clear i datain_name middle_name;

%计算残差
for i=1:threeStationNumber
    P=eval(['PP_datain_',num2str(i)]);%中间变量名
    [dataout lowerLimit upperLimit xy] = lowess(P,0.15,0);
    
    dataout_name=['PP_dataout_',num2str(i)];%创建变量名
    eval([dataout_name,'=dataout']);
    eval([dataout_name,'(:,4)','=',dataout_name,'(:,2)','-',dataout_name,'(:,3)']);%第4列存放：残差=原始-趋势项
end
clear i P dataout lowerLimit upperLimit xy dataout_name;

%PP对应dataout矩阵
for i=1:threeStationNumber
	P=eval(['PP_dataout_',num2str(i)]);%中间变量名
	residualError_PP(:,i) = P(:,4);%残差
    trend_PP(:,i)=P(:,3);%趋势项
end
clear P i; 
%拆分三方向
residualError_PP_PE=residualError_PP(:,1:stationNumber);
residualError_PP_PN=residualError_PP(:,(stationNumber+1):2*stationNumber);
residualError_PP_PU=residualError_PP(:,((2*stationNumber)+1):3*stationNumber);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trend_PP_PE=trend_PP(:,1:stationNumber);
trend_PP_PN=trend_PP(:,(stationNumber+1):2*stationNumber);
trend_PP_PU=trend_PP(:,((2*stationNumber)+1):3*stationNumber);

clear M epoch stationNumber threeStationNumber