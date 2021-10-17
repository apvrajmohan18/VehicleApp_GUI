classdef  Motorcycle
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        type
        brand
        power
        weight
        no_doors
        mcycle_cc        
    end
    
    methods
        
    function mm = Motorcycle(mcycle_type,mcycle_brand,mcycle_power,mcycle_weight,mcycle_no_doors,mcycle_cucapacity)
         if nargin == 0
            mcycle_type = '';
            mcycle_brand = '';
            mcycle_power = ''; % r (in kW), 
            mcycle_weight = '';% weight (in kg)
            mcycle_no_doors = 0
            mcycle_cucapacity = '';
         end
         
         mm.type = mcycle_type;
         mm.brand=mcycle_brand;
         mm.power=mcycle_power;
         mm.weight=mcycle_weight;
         mm.no_doors=mcycle_no_doors;
         mm.mcycle_cc=mcycle_cucapacity;
    end
    end
end

