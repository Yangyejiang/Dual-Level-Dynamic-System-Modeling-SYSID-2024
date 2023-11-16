%% Example for Neural Hybrid System Learning & Abstraction
clear
close all
clc

%% Coefficient Setting
Maximum_Dimension=2;
tol = 0.01;
maximum_entropy=300;
NeuronNum_swith=20;
NeuronNum_single=200;

%% Load Data
load(['DataSet/Angle'],'demos','dt');
for i = 1:size(demos,2)
    TrajData{i} = demos{i}.pos;
    plot(TrajData{i}(1,:),TrajData{i}(2,:))
    hold on
end
%
TrajNum=size(demos,2);
xs=zeros((size(TrajData{1},1))*TrajNum,2);
t=zeros((size(TrajData{1},1))*TrajNum,2);
for i = 1:TrajNum
    Begin=(size(TrajData{1},2)-1)*(i-1)+1;
    End = (size(TrajData{1},2)-1)*(i-1)+size(TrajData{1},2);
    xs(Begin:End-1,1) = TrajData{i}(1,1:end-1);
    xs(Begin:End-1,2) = TrajData{i}(2,1:end-1);
    t(Begin:End-1,1) = TrajData{i}(1,2:end);
    t(Begin:End-1,2) = TrajData{i}(2,2:end);
end
[xsn, ps_input] = mapminmax(xs',-1,1);
tn = mapminmax('apply',t',ps_input);