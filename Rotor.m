classdef Rotor
    properties
        R           %Radius of Rotor
        N           %Number of Poles
        N_c         %Number of Turns per slot
        th_root     %Thickness of root
        th_gap    %Thickness of tooth
        F           %Fill Factor
        mu_r        %permability of material
        L           %Length of rotor
    end
    
    methods
        function obj = Rotor(R,N,N_c,th_root,th_gap,F,mu_r,L)
            obj.R=R;
            obj.N=N;
            obj.N_c=N_c;
            obj.th_root=th_root;
            obj.th_gap=th_gap;
            obj.F=F;
            obj.mu_r=mu_r;
            obj.L=L;
        end
        
        function Area_tooth = toothArea(obj)
            C=2*3.14*obj.R; 
            Area_tooth = (C/obj.N)-obj.th_gap;
        end
    end
end
