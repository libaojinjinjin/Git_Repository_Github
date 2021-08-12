%恢复干净原始时间序列

%干净原始坐标时序=插值后残差+趋势项
clear_PE=interp1_PE+trend_PP_PE;%这就是输出的数据，剔除粗差后又插值的数据
clear_PN=interp1_PN+trend_PP_PN;
clear_PU=interp1_PU+trend_PP_PU;