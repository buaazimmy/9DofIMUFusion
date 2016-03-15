clear;
clc;
close all;

rawdata=load('biaoding.txt');
deltaT = rawdata(:,1);
acc = rawdata(:,2:4);
gyro = rawdata(:,5:7);
mag = rawdata(:,8:10);
len = length(deltaT);
q = zeros(len+1,4);
ypr = zeros(len,3);

for i=1:len
    q(i+1,:) = ImuFusion(q(i,:),acc(i,:),gyro(i,:),mag(i,:),deltaT(i));
end


