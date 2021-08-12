%剔除粗差插值程序
%三个参数+接收变量名

epoch=3600;%历元数
stationNumber=10;%测站数
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%E方向原始数据剔除粗差
B=residualError_PP_PE;%变量名
for j=1:stationNumber
    sum=0;
    for i=1:epoch
        P=(B(i,j)-mean(B(:,j)))^2;
        sum=sum+P;    
    end
    r(1,j)=sqrt(sum/(epoch-1));%求中误差
end
 clear j i P sum;

for k=1:stationNumber
    
    j=1;
    J=1;
    for i=1:epoch
        if( abs( B(i,k)-sum(B(:,k))/epoch ) <= 3*r(1,k) )
            cullError_PE_y(j,k)=B(i,k);%接收变量值
            cullError_PE_x(j,k)=i;
            j=j+1;
        else
             cullError_PE_xa(J,k)=i;
             J=J+1;
        end
    end
end

 [m,n]=size(cullError_PE_xa);%%解决矩阵 cullError_PU_xa维度不满
  if(n<stationNumber)
       cullError_PE_xa(:,n+1:stationNumber)=zeros(m,stationNumber-n);
  end
 clear m n 
clear i j k r J B;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %插值
[m,n]=size(cullError_PE_xa);
cullError_PE_ya=zeros(m,n);%解决矩阵赋值超出维度

clear m n

for i=1:stationNumber   
    mid_xy=sum(cullError_PE_x(:,i)~=0);%有效数据长度
    mid_xa=sum(cullError_PE_xa(:,i)~=0);%有效数据长度
    if(mid_xa~=0)%避免历元出现1:0情况
        cullError_PE_ya(1:mid_xa,i) = interp1(cullError_PE_x(1:mid_xy,i),cullError_PE_y(1:mid_xy,i),cullError_PE_xa(1:mid_xa,i),'pchip');%三次多项式方法
    end
end

clear mid_xy mid_xa i

%插值插入到原序列
for j=1:stationNumber
    for i=1:epoch
        mid_xy=sum(cullError_PE_x(:,j)~=0);%有效数据长度
        mid_xa=sum(cullError_PE_xa(:,j)~=0);%有效数据长度
        %遍历第一个数组
            for i1=1:mid_xy
                if(i==cullError_PE_x(i1,j))
                    interp1_PE(i,j)=cullError_PE_y(i1,j);
                end
            end
            %遍历第二个数组
            for i2=1:mid_xa
                if(i==cullError_PE_xa(i2,j))
                    interp1_PE(i,j)=cullError_PE_ya(i2,j);
                end
            end   
    end
end

clear i i1 i2 j mid_xy mid_xa
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%N方向原始数据剔除粗差
B=residualError_PP_PN;%变量名
for j=1:stationNumber
    sum=0;
    for i=1:epoch
        P=(B(i,j)-mean(B(:,j)))^2;
        sum=sum+P;    
    end
    r(1,j)=sqrt(sum/(epoch-1));%求中误差
end
 clear j i P sum;

for k=1:stationNumber
    
    j=1;
    J=1;
    for i=1:epoch
        if( abs( B(i,k)-sum(B(:,k))/epoch ) <= 3*r(1,k) )
            cullError_PN_y(j,k)=B(i,k);%接收变量值
            cullError_PN_x(j,k)=i;
            j=j+1;
        else
             cullError_PN_xa(J,k)=i;
             J=J+1;
        end
    end
end

 [m,n]=size(cullError_PN_xa);%%解决矩阵 cullError_PU_xa维度不满
  if(n<stationNumber)
       cullError_PN_xa(:,n+1:stationNumber)=zeros(m,stationNumber-n);
  end
 clear m n 
clear i j k r J B;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %插值
[m,n]=size(cullError_PN_xa);
cullError_PN_ya=zeros(m,n);%解决矩阵赋值超出维度

clear m n

for i=1:stationNumber   
    mid_xy=sum(cullError_PN_x(:,i)~=0);%有效数据长度
    mid_xa=sum(cullError_PN_xa(:,i)~=0);%有效数据长度
    if(mid_xa~=0)%避免历元出现1:0情况
        cullError_PN_ya(1:mid_xa,i) = interp1(cullError_PN_x(1:mid_xy,i),cullError_PN_y(1:mid_xy,i),cullError_PN_xa(1:mid_xa,i),'pchip');%三次多项式方法
    end
end

clear mid_xy mid_xa i

%插值插入到原序列
for j=1:stationNumber
    for i=1:epoch
        mid_xy=sum(cullError_PN_x(:,j)~=0);%有效数据长度
        mid_xa=sum(cullError_PN_xa(:,j)~=0);%有效数据长度
        %遍历第一个数组
            for i1=1:mid_xy
                if(i==cullError_PN_x(i1,j))
                    interp1_PN(i,j)=cullError_PN_y(i1,j);
                end
            end
            %遍历第二个数组
            for i2=1:mid_xa
                if(i==cullError_PN_xa(i2,j))
                    interp1_PN(i,j)=cullError_PN_ya(i2,j);
                end
            end   
    end
end

clear i i1 i2 j mid_xy mid_xa
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%U方向原始数据剔除粗差
B=residualError_PP_PU;%变量名
for j=1:stationNumber
    sum=0;
    for i=1:epoch
        P=(B(i,j)-mean(B(:,j)))^2;
        sum=sum+P;    
    end
    r(1,j)=sqrt(sum/(epoch-1));%求中误差
end
 clear j i P sum;

for k=1:stationNumber
    
    j=1;
    J=1;
    for i=1:epoch
        if( abs( B(i,k)-sum(B(:,k))/epoch ) <= 3*r(1,k) )
            cullError_PU_y(j,k)=B(i,k);%接收变量值
            cullError_PU_x(j,k)=i;
            j=j+1;
        else
            cullError_PU_xa(J,k)=i;%
            J=J+1;
        end
    end
end

 [m,n]=size(cullError_PU_xa);%%解决矩阵 cullError_PU_xa维度不满
  if(n<stationNumber)
       cullError_PU_xa(:,n+1:stationNumber)=zeros(m,stationNumber-n);
  end
 clear m n 
clear i j k r J B;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %插值
[m,n]=size(cullError_PU_xa);
cullError_PU_ya=zeros(m,n);%解决矩阵赋值超出维度

clear m n

for i=1:stationNumber   
    mid_xy=sum(cullError_PU_x(:,i)~=0);%有效数据长度
    mid_xa=sum(cullError_PU_xa(:,i)~=0);%有效数据长度
    if(mid_xa~=0)%避免历元出现1:0情况
        cullError_PU_ya(1:mid_xa,i) = interp1(cullError_PU_x(1:mid_xy,i),cullError_PU_y(1:mid_xy,i),cullError_PU_xa(1:mid_xa,i),'pchip');%三次多项式方法
    end
end

clear mid_xy mid_xa i

%插值插入到原序列
for j=1:stationNumber
    for i=1:epoch
        mid_xy=sum(cullError_PU_x(:,j)~=0);%有效数据长度
        mid_xa=sum(cullError_PU_xa(:,j)~=0);%有效数据长度
        %遍历第一个数组
            for i1=1:mid_xy
                if(i==cullError_PU_x(i1,j))
                    interp1_PU(i,j)=cullError_PU_y(i1,j);
                end
            end
            %遍历第二个数组
            for i2=1:mid_xa
                if(i==cullError_PU_xa(i2,j))
                    interp1_PU(i,j)=cullError_PU_ya(i2,j);
                end
            end   
    end
end

clear i i1 i2 j mid_xy mid_xa
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear epoch stationNumber

clear cullError_PE_x cullError_PE_y  cullError_PE_ya
clear cullError_PN_x cullError_PN_y  cullError_PN_ya
clear cullError_PU_x cullError_PU_y  cullError_PU_ya