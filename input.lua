-- sources:
-- 1: http://lua-users.org/wiki/TutorialDirectory
-- 2: 
-- 3:


function main()
    a = 97
    b = "heyo"
    input = io.read()
    print (input)   
    end



function collectUserInput()
    -- Prompt the user for input
    print("Enter your input: ")
  
    -- Read the user's input as a string using io.read()
    local userInput = io.read()
  
    -- Print the collected input
    print("You entered:", userInput)
  
    -- Return the collected input (optional)
    return userInput
  end
  
  -- Example usage
  local receivedInput = collectUserInput()
  print("The function returned:", receivedInput) -- Optional, if you need to use the input elsewhere