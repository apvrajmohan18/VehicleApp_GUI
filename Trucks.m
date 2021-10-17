classdef Trucks
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        type
        brand
        power
        weight
        no_doors
        truck_class 
        truck_cc
    end
    
    methods
        
    function tt = Trucks(truck_type,truck_brand,truck_power,truck_weight,truck_no_doors,truck_truck_class,truck_cc_level)
         if nargin == 0
            truck_type = '';
            truck_brand = '';
            truck_power = ''; % r (in kW), 
            truck_weight = '';% weight (in kg)
            truck_no_doors = 2;
            truck_truck_class = '';
            truck_cc_level = 0;
         end
         
         tt.type = truck_type;
         tt.brand=truck_brand;
         tt.power=truck_power;
         tt.weight=truck_weight;
         tt.no_doors = truck_no_doors;
         tt.truck_class=truck_truck_class;
         tt.truck_cc = truck_cc_level;
    end
    end
end

