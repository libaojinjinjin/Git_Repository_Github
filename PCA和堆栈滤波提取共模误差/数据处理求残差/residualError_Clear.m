%�в�����������
%�ڲ�׼������ station��epoch

stationNumber=7 ;%��վ��
threeStationNumber=3*stationNumber;%ENU�������վ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%����в����

%����в��datain
%����PP��datain
for i=1:threeStationNumber
    datain_name=['PP_datain_',num2str(i)];%����������    
    eval(['clear ',datain_name]);
end   
clear i datain_name;
%����EMD_PCA��datain
for i=1:threeStationNumber
    datain_name=['EMD_PCA_datain_',num2str(i)];%datain������
    
    eval(['clear ',datain_name]);
end   
clear i datain_name;
%����WD_PCA��datain
for i=1:threeStationNumber
    datain_name=['WD_PCA_datain_',num2str(i)];%�м������

    eval(['clear ',datain_name]);
end   
clear i middle_name; 
%����WD_MPCA��datain
for i=1:threeStationNumber %3����վ
    datain_name=['WD_MPCA_datain_',num2str(i)];%�м������
    
    eval(['clear ',datain_name]);
end   
clear i datain_name;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%����в��dataout
%����PP��dataout
for i=1:threeStationNumber
	dataout_name=['PP_dataout_',num2str(i)];%����������
	
    eval(['clear ',dataout_name]);
end
clear i dataout_name; 

%����EMD_PCA��dataout
for i=1:threeStationNumber
	dataout_name=['EMD_PCA_dataout_',num2str(i)];%����������
	
    eval(['clear ',dataout_name]);
end
clear i dataout_name; 
%����WD_PCA��dataout
for i=1:threeStationNumber
	dataout_name=['WD_PCA_dataout_',num2str(i)];%����������
	
    eval(['clear ',dataout_name]);
end
clear i dataout_name; 
%����WD_MPCA��dataout
for i=1:threeStationNumber
	dataout_name=['WD_MPCA_dataout_',num2str(i)];%����������
	
    eval(['clear ',dataout_name]);
end
clear i dataout_name; 
clear stationNumber threeStationNumber;