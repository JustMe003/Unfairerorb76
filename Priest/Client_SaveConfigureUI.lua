function Client_SaveConfigureUI(alert)
    local cost = costInputField.GetValue();
    if cost < 1 then alert("the cost to buy a priest must be positive"); end
    Mod.Settings.CostToBuyPriest = cost;

    local power = powerInputField.GetValue();
    if power < 1 then alert("a priest unit must have at least one power"); end
    Mod.Settings.PriestPower = power;

    local maxPriests = maxPriestsField.GetValue();
    if maxPriests < 1 or maxPriests > 5 then alert("Max number of priests per player must be between 1 and 5"); end
    Mod.Settings.MaxPriests = maxPriests;
    
    local percentage = percentageField.GetValue();
    Mod.Settings.Percentage = percentage;
    
    
end
