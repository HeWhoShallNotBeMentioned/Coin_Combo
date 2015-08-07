class Float
  define_method(:coin_combinations) do
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0
    total_change = self
    output_string = ""

    until total_change.<(0.25)
      total_change = total_change.-(0.25).round(2)
      quarters = quarters.+(1)
    end

    until total_change.<(0.10)
      total_change = total_change.-(0.10).round(2)
      dimes = dimes.+(1)
    end

    until total_change.<(0.05)
      total_change = total_change.-(0.05).round(2)
      nickels = nickels.+(1)
    end

    until total_change.<=(0.00)
      total_change = total_change.-(0.01).round(2)
      pennies = pennies.+(1)
    end

    return output_string =  "You have #{quarters} quarters, #{dimes} dimes, #{nickels} nickels, and #{pennies} pennies"



  end
end
