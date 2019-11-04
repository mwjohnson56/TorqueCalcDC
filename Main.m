R = .035/2;     %Radius of rotor
N = 8;          %Number of rotor slots
F=.6;           %Fill factor for rotor
A_rot=.02597;   %Area of rotor slot
A_rotF=A_rot*F; %Useable Area of rotor slot with fill factor
A_w=.0001624;   %CS-Area of 25 gauge Wire
N_c= floor(A_rotF/A_w);     %Number of wires per slot
th_root=.006;   %Thickness of rotor root
th_gap=.00076;  %Thickness of gap between teeth
mu_r = 3000;    %Relative Perability of steel
L = .025;       %Length of rotor/stator

th_tooth=.035;  %Thickness of stator tooth
W_tooth = .01733;   %Width of Stator tooth
W_s=.1;         %Width of Stator
H_s=.1;         %Hieght of Stator
th_BI=.0146;   %Thickness of Back iron
N_s=429;        %Number of Turns on stator coil
g=.001;         %Air gap

rot = Rotor(R,N,N_c,th_root,th_gap,F,mu_r,L); %Create rotor 
stat = Stator(th_tooth,mu_r,L,W_tooth,W_s,H_s,th_BI,N_s,g); %create Stator

B=MagFeild(rot,stat,2); %Calculate Magnetic feild strength
I_r=2;                  %Armature Current
T=Torque(rot,I_r,B);    %Calculate Torque in rotor