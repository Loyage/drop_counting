clear;
clc;
% 
drop_information=[];

name = ['drop_information_for_147.txt'];
drop_information1 = load(name);
drop_information=cat(1,drop_information,drop_information1);

times = 20;
drop_radius = 2*drop_information(:,3)*13.7/times;
min_radius = min(drop_radius)
max_radius = max(drop_radius)
mean_radius = mean(drop_radius)
std_radius = std(drop_radius)
CV=100*std_radius/mean_radius
median_radius = median(drop_radius)
a=hist(drop_radius,10);
hist(drop_radius,30);