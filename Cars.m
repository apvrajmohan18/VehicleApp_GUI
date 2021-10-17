classdef Cars
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        type
        brand
        power
        weight
        no_doors
        cc
    end
    
    methods
        
    function cc = Cars(car_type,car_brand,car_power,car_weight,car_no_doors,car_cc)
         if nargin == 0
            car_type = '';
            car_brand = '';
            car_power = ''; % r (in kW), 
            car_weight = '';% weight (in kg)
            car_no_doors = '';
            car_cc = 0;
         end
         
         cc.type = car_type;
         cc.brand=car_brand;
         cc.power=car_power;
         cc.weight=car_weight;
         cc.no_doors=car_no_doors;
         cc.cc=car_cc;
    end
    end
end

