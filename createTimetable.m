% this really isnt ideal but works 
clear;clc;
load("telemetry2.mat");
time=seconds(table2array(telemetry(:,36)));
time = (time-time(1))./10^6;
time.Format='hh:mm:ss.SSS';

% create timeseries
gps_long=table2timetable(telemetry(:,1),'RowTimes',time);
gps_lat=table2timetable(telemetry(:,2),'RowTimes',time);
gps_alt=table2timetable(telemetry(:,3),'RowTimes',time);
gps_v_n=table2timetable(telemetry(:,4),'RowTimes',time);
gps_v_e=table2timetable(telemetry(:,5),'RowTimes',time);
gps_v_d=table2timetable(telemetry(:,6),'RowTimes',time);
gps_sat=table2timetable(telemetry(:,7),'RowTimes',time);
gps_fix=table2timetable(telemetry(:,8),'RowTimes',time);

ax=table2timetable(telemetry(:,9),'RowTimes',time);
ay=table2timetable(telemetry(:,10),'RowTimes',time);
az=table2timetable(telemetry(:,11),'RowTimes',time);

gx=table2timetable(telemetry(:,12),'RowTimes',time);
gy=table2timetable(telemetry(:,13),'RowTimes',time);
gz=table2timetable(telemetry(:,14),'RowTimes',time);

mx=table2timetable(telemetry(:,15),'RowTimes',time);
my=table2timetable(telemetry(:,16),'RowTimes',time);
mz=table2timetable(telemetry(:,17),'RowTimes',time);

imu_temp=table2timetable(telemetry(:,18),'RowTimes',time);

baro_alt=table2timetable(telemetry(:,19),'RowTimes',time);
baro_temp=table2timetable(telemetry(:,20),'RowTimes',time);
baro_press=table2timetable(telemetry(:,21),'RowTimes',time);

batt_volt=table2timetable(telemetry(:,22),'RowTimes',time);
batt_percent=table2timetable(telemetry(:,23),'RowTimes',time);

roll=table2timetable(telemetry(:,24),'RowTimes',time);
pitch=table2timetable(telemetry(:,25),'RowTimes',time);
yaw=table2timetable(telemetry(:,26),'RowTimes',time);

pn=table2timetable(telemetry(:,27),'RowTimes',time);
pe=table2timetable(telemetry(:,28),'RowTimes',time);
pd=table2timetable(telemetry(:,29),'RowTimes',time);

vn=table2timetable(telemetry(:,30),'RowTimes',time);
ve=table2timetable(telemetry(:,31),'RowTimes',time);
vd=table2timetable(telemetry(:,32),'RowTimes',time);

an=table2timetable(telemetry(:,33),'RowTimes',time);
ae=table2timetable(telemetry(:,34),'RowTimes',time);
ad=table2timetable(telemetry(:,35),'RowTimes',time);
