-- sources:
-- 1: http://lua-users.org/wiki/TutorialDirectory
-- 2: http://lua-users.org/wiki/OsLibraryTutorial
-- 3:


unction main()
    
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


function writeToFile(fileName, content)
    -- Attempt to open the file in write mode ("w")
    local file = io.open(fileName, "w")
  
    -- Check if the file opened successfully
    if file then
      -- Write the content to the file
      io.write(file, content)
  
      -- Close the file
      io.close(file)
  
      print("Successfully wrote to file:", fileName)
    else
      print("Error: Could not open file:", fileName)
    end

  