%读取外部准备数据PE、PN、PU数据的程序
%注意：需要检查读取文件的数据格式
%内部准备变量Z fileName 路径 历元

%%测站数
stationNumber=10;

%%创建测站名数组(待读取excel文件依此命名)
fileName={'p618','p625','p630','p632','p633','p637','p640','p642','p648','p653'};
%读取  
for i=1:stationNumber
     PN(:,i)=xlsread(eval('C:\Users\Lenovo\Desktop\test\highdata4\','fileName{i}'),1,'H3:H3602');%该路径下该文件的3600个历元数据
     PE(:,i)=xlsread(eval('C:\Users\Lenovo\Desktop\test\highdata4\','fileName{i}'),1,'J3:J3602');
     PU(:,i)=xlsread(eval('C:\Users\Lenovo\Desktop\test\highdata4\','fileName{i}'),1,'L3:L3602');
end
clear stationNumber i fileName;

% i=1;   
% %因数据不规则不能采用上述代码
% %p171
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p171',1,'H17739:H21338');%该路径下该文件的3600个历元数据
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p171',1,'J17739:J21338');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p171',1,'L17739:L21338');
% %p172
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p172',1,'H17789:H21388');%该路径下该文件的3600个历元数据
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p172',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p172',1,'L17789:L21388');
% %p210
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p210',1,'H17789:H21388');%该路径下该文件的3600个历元数据
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p210',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p210',1,'L17789:L21388');
% %p218
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p218',1,'H17789:H21388');%该路径下该文件的3600个历元数据
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p218',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p218',1,'L17789:L21388');
% %p231
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p231',1,'H17789:H21388');%该路径下该文件的3600个历元数据
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p231',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p231',1,'L17789:L21388');
% %p235
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p235',1,'H17789:H21388');%该路径下该文件的3600个历元数据
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p235',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p235',1,'L17789:L21388');
% %p240
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p240',1,'H17693:H21292');%该路径下该文件的3600个历元数据
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p240',1,'J17693:J21292');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p240',1,'L17693:L21292');
% %p241
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p241',1,'H17789:H21388');%该路径下该文件的3600个历元数据
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p241',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p241',1,'L17789:L21388');
% %p242
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p242',1,'H17692:H21291');%该路径下该文件的3600个历元数据
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p242',1,'J17692:J21291');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p242',1,'L17692:L21291');
% %p250
% i=i+1; 
% PN(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p250',1,'H17789:H21388');%该路径下该文件的3600个历元数据
% PE(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p250',1,'J17789:J21388');
% PU(1:3600,i)=xlsread('C:\Users\Lenovo\Desktop\WD-MPCA\data\data_h\p250',1,'L17789:L21388');
% 
% clear i