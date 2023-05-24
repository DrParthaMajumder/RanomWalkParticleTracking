tic

clc
clear all
close all

% clear zwp1_v;
% clear tt_vect;
format short


%% Developer: Partha Majumder
display('PLEASE WAIT');
H=1; % Thickness of the aquifer
alpha_L=0.1;  % meter
alpha_T=0.1;  % meter
Vx=0.5;       % m/day
Vy=0;
v_por=0.5;
por=0.3;


Time=60;  % days


 D_xx=(alpha_T*v_por)+((alpha_L-alpha_T)*((Vx*Vx)/v_por));
 D_yy=(alpha_T*v_por)+((alpha_L-alpha_T)*((Vy*Vy)/v_por));
 D_xy=(alpha_L-alpha_T)*((Vx*Vy)/v_por);
 D_yx=(alpha_L-alpha_T)*((Vy*Vx)/v_por);
 
 derv_D_xx=0;
 derv_D_yy=0;
 derv_D_xy=0; 
 derv_D_yx=0;
 

 
%% 1 
tic

z_rect1=4.95+7.95i;
z_rect2=5.05+8.05i;
x_rect1=real(z_rect1);
y_rect1=imag(z_rect1);
x_rect2=real(z_rect2);
y_rect2=imag(z_rect2);
Np=100;  % Number of particles
M_in=0.01*1000*1000;       % 10 g/day---> converted to miligram/lt 0.01 kg
for ii=1:1:Np
    xwp=x_rect1+(x_rect2-x_rect1)*rand;
    ywp=y_rect1+(y_rect2-y_rect1)*rand;
    zwp(ii)=xwp+i*ywp;
end

xwp1=real(zwp);
ywp1=imag(zwp);
zwp1=xwp1+i*ywp1;                              %% zwp1 is important 
      
      
delt=0.1;
pydelt=0;      
for tt=0:delt:Time
    pydelt=pydelt+1;
    z=zwp1;
    random_number1=randn(1,Np);   
    random_number2=randn(1,Np);
       
%     xwp1=xwp1+delt.*(Vx+derv_D_xx+derv_D_xy)+(random_number1*sqrt(2*D_xx*delt))+(random_number1*sqrt(2*D_xy.*delt));  %% randn generates random number with mean 0 and variance 1
%     ywp1=ywp1+delt.*(Vy+derv_D_yx+derv_D_yy)+(random_number2*sqrt(2*D_yy*delt))+(random_number2*sqrt(2*D_yx.*delt));
       
       xwp1=xwp1+delt.*(Vx+derv_D_xx+derv_D_xy)+(random_number1.*sqrt(2*D_xx.*delt))+(random_number1.*sqrt(2*D_xy.*delt));  %% randn generates random number with mean 0 and variance 1
       ywp1=ywp1+delt.*(Vy+derv_D_yx+derv_D_yy)+(random_number2.*sqrt(2*D_yy.*delt))+(random_number2.*sqrt(2*D_yx.*delt));  %% the time step is not 1
       zwp1=xwp1+i*ywp1;      
          
     zwp1_v(:,pydelt)=zwp1;
end
 
for ii=1:1:Np
      zwp1_v1=[zwp1_v(ii,:)];
      zwp1_v1_real=real(zwp1_v1);
      zwp1_v1_imag=imag(zwp1_v1);
      plot(zwp1_v1_real,zwp1_v1_imag);
      hold on
      
end
      



 