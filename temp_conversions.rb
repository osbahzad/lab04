
# making the covert method
def convert(temp, measure = "F")
    return "Temperature must be an integer" if temp.class != Integer

    if measure == "F"
        return "Temperature below Absolute Zero" if temp < -474 
        return ((temp-32)*5)/9
    else 
        return (temp*1.8)+32
    end

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