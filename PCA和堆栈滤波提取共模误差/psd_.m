%�������ܶȳ���

stationNumber=7;%�ڼ���վ  10            6 8
m_H=1;%����Ƶ��

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%E���������㷨
%���㹦�����ܶ�
%E����
for i=1:stationNumber*3
    resi=ySTK_dtr(:,i);%��Ե�����վ����
    [PP_PE_s0(:,i), PP_PE_F(:,i),fshift]=psd(resi,m_H);
    %������ȡ����
    psd_Ex(:,i)=log10(PP_PE_F(1:fshift,i))';%fshit��x��y����
    %������ȡ����
    psd_Ey(:,i)=log10(PP_PE_s0(1:fshift,i))';
end
    clear resi PP_PE_s0 PP_PE_F


%
%��ͼ
% figure;
% plot(psd_E(:,1),psd_E(:,2),'k');


