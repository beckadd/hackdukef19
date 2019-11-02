function [energyConsumption, energyExpendatures] = findSpec(region, subregion, urban, climate, housingtype, sqft, rent, yearcst, hshld, income, included_in_rent, heating_fuel)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

switch region
    case 'midwest'
        T = readtable('Midwest.xlsx');
    case 'south'
        T = readtable('South.xlsx');
    case 'northeast'
        T = readtable('Northeast.xlsx');
    case 'west'
        T = readtable('west.xlsx');
end

energyConsumptionT = T.EnergyConsumption; 
% Per household member (million Btu)

energyExpendaturesT = T.EnergyExpenditures;
%Per household member (dollars)

myKeys = {region, subregion, urban, climate, housingtype, sqft, rent, yearcst, hshld, income, included_in_rent, heating_fuel};
idx = ismember(T.Tags, myKeys);
% Access the table for these specific rows

energyConsumption = mean(energyConsumptionT(idx))
energyExpendatures = mean(energyExpendaturesT(idx))
end

