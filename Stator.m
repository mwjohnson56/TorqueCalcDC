classdef Stator
    
    properties
        th_tooth        %Stator Tooth thickness
        mu_r            %Relative Permability
        L               %Length of Stator
        W_tooth         %Width of tooth
        W_s             %Width of Stator
        H_s             %Height of Stator
        th_BI           %thickness of back iron
        N               %Number of Turns per coil
        g               %Airgap Thickness
    end
    
    methods 
        function obj = Stator(th_tooth,mu_r,L,W_tooth,W_s,H_s,th_BI,N,g)
            obj.th_tooth = th_tooth;
            obj.mu_r = mu_r;
            obj.L = L;
            obj.W_tooth = W_tooth;
            obj.W_s = W_s;
            obj.H_s = H_s;
            obj.th_BI = th_BI;
            obj.N = N;
            obj.g = g;
        end   
    end
end

    
        