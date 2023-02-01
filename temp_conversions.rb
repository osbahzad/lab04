
# making the covert method
def convert(temp)
    return "Temperature must be an integer" if temp.class != Integer
    return "Temperature below Absolute Zero" if temp < -474 
    return ((temp-32)*5)/9
end


# test cases
puts convert(32)          
puts convert(50)          
puts convert(212)

# edge case test
puts convert("zero")
puts convert(-500)