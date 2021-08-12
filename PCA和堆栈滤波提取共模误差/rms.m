%PCA去噪前
stationNumber=7;
canshu=ySTK_dtr;


%求平方项
for j=1:stationNumber*3
    sum(1,j)=0;
    for i=1:3600
        P =canshu(i,j)*canshu(i,j);
        sum(1,j)= sum(1,j)+P;
    end
end

%求RMS
for i=1:3*stationNumber
    RMS_STK_CME(1,i)=sqrt(sum(1,i)/3600);
end

clear i j sum canshu P stationNumber
%PCA去噪后