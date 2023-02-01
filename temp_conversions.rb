
# making the covert method
def convert(temp, measure = "F")
    return "Temperature must be an integer" if temp.class != Integer
    return "Temperature below Absolute Zero" if below_absolute_zero?(temp, measure)

    if measure == "F"
        return ((temp-32)*5)/9
    else 
        return (temp*1.8)+32
    end

end

# Helper 
def below_absolute_zero?(temp, measure)
    if measure == "F"
        if temp <= -474 
            return true
        end
    else
         if temp <= -280 
            return true
         end
    end
    return false
end


# F test cases
puts convert(32)          
puts convert(50)          
puts convert(212)

# edge case test
puts convert("zero")
puts convert(-500)

# C test Cases
puts convert(0, "C")
puts convert(10, "C")
puts convert(100, "C")
puts convert(-280, "C")