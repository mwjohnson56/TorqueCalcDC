function T_avg = Torque(rot,I_r,B)
%TORQUE Calculates avg Torque produced by the rotor.

F=I_r*B*rot.L*rot.N_c; %Force felt wires in each slot
T = @(theta) 0; %Intialize total torque function
phi=2*pi/rot.N; %comutation angle
for i=1:rot.N/2 %loop over half of the number of slots.
    %T_i[i]=2*F*rot.R*sin(i*pi/4)
    T_i{i}= @(theta) 2*F*rot.R*sin(theta+i*phi);%function for torque ...
    %created by the ith slot
    T = @(theta) T(theta)+T_i{i}(theta); %Add ith torque function to total
end
T_int=integral(T,0,phi); %Integrate total torque generated in period
T_avg=T_int/(phi); %Divide by comutation period to get average torque
end
