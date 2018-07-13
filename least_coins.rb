def least_coins(cents)
  if cents >= 25
    num_quarters = cents/25 
    cents = cents - 25*num_quarters
  else num_quarters = 0 
  end
  if cents >= 10 
    num_dimes = cents/10
    cents = cents - 10*num_dimes
  else num_dimes = 0 
  end
  if cents >= 5
    num_nickels = cents/5
    cents = cents - 5*num_nickels
  else num_nickels = 0 
  end 
  if cents >= 1
    num_pennies = cents/1 
    cents = cents - num_pennies
  else num_pennies = 0 
  end
  total_coins = { :quarters => num_quarters, :dimes => num_dimes, :nickels => num_nickels, :pennies => num_pennies}
end 


puts least_coins(465)