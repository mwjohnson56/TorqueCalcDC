function B = MagFeild(rot,stat,I_s)
%MAGFEILD Calculates Magnetic Feild Strength from geometric and materials
%properties of the rotor along with the current through the coils.
%   Detailed explanation goes here

I_s=2;% Current through stator
F1=stat.N*I_s; %MMF through stator coil 1
F2=F1;         %MMF trhough stator coil 2

L_st=stat.W_tooth; %length of Stator tooth
A_st=stat.th_tooth*stat.L; %CS-Area of Stator Tooth
Rel_st=Reluctance(L_st,stat.mu_r,A_st); %Reluctance of Stator Tooth

A_ag=(rot.N/2)*toothArea(rot)*rot.L; %CS-Area of Airgap
Rel_ag=Reluctance(stat.g,1,A_ag); %Reluctance of Airgap

L_rt=rot.R*2;   %Length of Rotor
A_rt=rot.R*2*rot.L; %CS-Area Of rotor
Rel_rt=Reluctance(L_rt,rot.mu_r,A_rt); %Reluctance Of Rotor

L_BI=stat.W_s+stat.H_s;     %Length of Back Iron
A_BI=stat.th_BI*stat.L;     %Cross sectional Area of Back Iron
Rel_BI=Reluctance(L_BI,stat.mu_r,A_BI);     % Reluctance of Back Iron

R1=Rel_st+2*Rel_ag+Rel_rt; %Combinded Reluctance of stator tooth, airgap...
%and rotor

R2=Rel_st+(Rel_BI/2); %Combinded Reluctance of stator tooth and Back iron

phi=(F1+F2)/(R1+R2); %Calculate Magnetic Flux

B=phi/A_ag; %Magnetic Feild Strength
end

