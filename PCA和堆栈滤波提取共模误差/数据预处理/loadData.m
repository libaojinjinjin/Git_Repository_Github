%��ȡ�ⲿ׼������PE��PN��PU���ݵĳ���
%ע�⣺��Ҫ����ȡ�ļ������ݸ�ʽ
%�ڲ�׼������Z fileName ·�� ��Ԫ

%%��վ��
stationNumber=10;

%%������վ������(����ȡexcel�ļ���������)
fileName={'p618','p625','p630','p632','p633','p637','p640','p642','p648','p653'};
%��ȡ  
for i=1:stationNumber
     PN(:,i)=xlsread(eval('C:\Users\Lenovo\Desktop\test\highdata4\','fileName{i}'),1,'H3:H3602');%��·���¸��ļ���3600����Ԫ����
     PE(:,i)=xlsread(eval('C:\Users\Lenovo\Desktop\test\highdata4\','fileName{i}'),1,'J3:J3602');
     PU(:,i)=xlsread(eval('C:\Users\Lenovo\Desktop\test\highdata4\','fileName{i}'),1,'L3:L3602');
end
clear stationNumber i fileName;

% i=1;   
% %�����ݲ������ܲ�����������
% %p171
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p171',1,'H17739:H21338');%��·���¸��ļ���3600����Ԫ����
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p171',1,'J17739:J21338');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p171',1,'L17739:L21338');
% %p172
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p172',1,'H17789:H21388');%��·���¸��ļ���3600����Ԫ����
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p172',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p172',1,'L17789:L21388');
% %p210
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p210',1,'H17789:H21388');%��·���¸��ļ���3600����Ԫ����
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p210',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p210',1,'L17789:L21388');
% %p218
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p218',1,'H17789:H21388');%��·���¸��ļ���3600����Ԫ����
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p218',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p218',1,'L17789:L21388');
% %p231
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p231',1,'H17789:H21388');%��·���¸��ļ���3600����Ԫ����
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p231',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p231',1,'L17789:L21388');
% %p235
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p235',1,'H17789:H21388');%��·���¸��ļ���3600����Ԫ����
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p235',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p235',1,'L17789:L21388');
% %p240
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p240',1,'H17693:H21292');%��·���¸��ļ���3600����Ԫ����
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p240',1,'J17693:J21292');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p240',1,'L17693:L21292');
% %p241
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p241',1,'H17789:H21388');%��·���¸��ļ���3600����Ԫ����
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p241',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p241',1,'L17789:L21388');
% %p242
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p242',1,'H17692:H21291');%��·���¸��ļ���3600����Ԫ����
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p242',1,'J17692:J21291');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p242',1,'L17692:L21291');
% %p250
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p250',1,'H17789:H21388');%��·���¸��ļ���3600����Ԫ����
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p250',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p250',1,'L17789:L21388');
% 
% clear i