function [Hex,Bin]=ip_converter(IP)
%%%%%%%%% code 
clc;
clear all;
close all;
 IP = '192.168.1.2';
IP = char(IP);
disp('vous IP address est:'),disp(IP);
disp('----------------------------');
a=findstr(IP,'.');
b=length(IP);
k=IP(1:a(1));
l1=length(k);
j=k(1:l1-1);
m1=str2num(j);
k=IP(l1+1:a(2));
l2=length(k);
j=k(1:l2-1);
m2=str2num(j);
k=IP(l1+l2+1:a(3));
l3=length(k);
j=k(1:l3-1);
m3=str2num(j);
k=IP(l1+l2+l3:b);
l4=length(k);
j=k(2:l4);
m4=str2num(j);
n1=de2bi(m1);
n2=de2bi(m2);
n3=de2bi(m3);
n4=de2bi(m4);
ip_dec=[m1 m2 m3 m4];
b=' ';h=' ';
for i=1:length(ip_dec)
    ip_bin=dec2bin(ip_dec(i),8); b=[b,ip_bin,' '];
    ip_hex=dec2hex(ip_dec(i),2); h=[h,ip_hex,' '];
end
Bin=b;
Hex=h;
disp('vous IP address en binaire est:'),disp(Bin);
disp('----------------------------');

disp('vous IP addressen hexadecimal est:'),disp(Hex);
disp('----------------------------');
end