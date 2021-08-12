%残差变量清理程序
%内部准备变量 station，epoch

stationNumber=7 ;%测站数
threeStationNumber=3*stationNumber;%ENU三方向测站数
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%清理残差变量

%清理残差的datain
%清理PP的datain
for i=1:threeStationNumber
    datain_name=['PP_datain_',num2str(i)];%创建变量名    
    eval(['clear ',datain_name]);
end   
clear i datain_name;
%清理EMD_PCA的datain
for i=1:threeStationNumber
    datain_name=['EMD_PCA_datain_',num2str(i)];%datain变量名
    
    eval(['clear ',datain_name]);
end   
clear i datain_name;
%清理WD_PCA的datain
for i=1:threeStationNumber
    datain_name=['WD_PCA_datain_',num2str(i)];%中间变量名

    eval(['clear ',datain_name]);
end   
clear i middle_name; 
%清理WD_MPCA的datain
for i=1:threeStationNumber %3倍测站
    datain_name=['WD_MPCA_datain_',num2str(i)];%中间变量名
    
    eval(['clear ',datain_name]);
end   
clear i datain_name;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%清理残差的dataout
%清理PP的dataout
for i=1:threeStationNumber
	dataout_name=['PP_dataout_',num2str(i)];%创建变量名
	
    eval(['clear ',dataout_name]);
end
clear i dataout_name; 

%清理EMD_PCA的dataout
for i=1:threeStationNumber
	dataout_name=['EMD_PCA_dataout_',num2str(i)];%创建变量名
	
    eval(['clear ',dataout_name]);
end
clear i dataout_name; 
%清理WD_PCA的dataout
for i=1:threeStationNumber
	dataout_name=['WD_PCA_dataout_',num2str(i)];%创建变量名
	
    eval(['clear ',dataout_name]);
end
clear i dataout_name; 
%清理WD_MPCA的dataout
for i=1:threeStationNumber
	dataout_name=['WD_MPCA_dataout_',num2str(i)];%创建变量名
	
    eval(['clear ',dataout_name]);
end
clear i dataout_name; 
clear stationNumber threeStationNumber;