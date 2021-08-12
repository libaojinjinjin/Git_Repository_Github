%����GNSS�в�ʱ��ϵ�����߳���
%�ڲ�׼������epoch stationNumber���ⲿ׼������PE PN PU 

epoch=3600;%��Ԫ��
stationNumber=10;%��վ��

threeStationNumber=3*stationNumber;%ENU�������վ��
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%�����Ǽ������վԭʼ�Ĳв�ʱ��ϵ��

%�ϲ�����
P=[PE PN PU];

%����datain
M=P;%�м����

for i=1:threeStationNumber
    datain_name=['PP_datain_',num2str(i)];%����������

    middle_name(:,1)=1:epoch;%�м������
    middle_name(:,2)=M(:,i);
    
    eval([datain_name,'=middle_name']);%�������ַ�����Ϊ���ִ��
end   
clear i datain_name middle_name;

%����в�
for i=1:threeStationNumber
    P=eval(['PP_datain_',num2str(i)]);%�м������
    [dataout lowerLimit upperLimit xy] = lowess(P,0.15,0);
    
    dataout_name=['PP_dataout_',num2str(i)];%����������
    eval([dataout_name,'=dataout']);
    eval([dataout_name,'(:,4)','=',dataout_name,'(:,2)','-',dataout_name,'(:,3)']);%��4�д�ţ��в�=ԭʼ-������
end
clear i P dataout lowerLimit upperLimit xy dataout_name;

%PP��Ӧdataout����
for i=1:threeStationNumber
	P=eval(['PP_dataout_',num2str(i)]);%�м������
	residualError_PP(:,i) = P(:,4);%�в�
    trend_PP(:,i)=P(:,3);%������
end
clear P i; 
%���������
residualError_PP_PE=residualError_PP(:,1:stationNumber);
residualError_PP_PN=residualError_PP(:,(stationNumber+1):2*stationNumber);
residualError_PP_PU=residualError_PP(:,((2*stationNumber)+1):3*stationNumber);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trend_PP_PE=trend_PP(:,1:stationNumber);
trend_PP_PN=trend_PP(:,(stationNumber+1):2*stationNumber);
trend_PP_PU=trend_PP(:,((2*stationNumber)+1):3*stationNumber);

clear M epoch stationNumber threeStationNumber