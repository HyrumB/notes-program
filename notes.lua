-- sources:
-- 1: http://lua-users.org/wiki/TutorialDirectory
-- 2: http://lua-users.org/wiki/OsLibraryTutorial
-- 3: https://www.tutorialspoint.com/lua/lua_file_io.htm


-- Function to get user input
local function collectUserInput(message)
  io.write(message .. ": ")
  return io.read()
end

-- Function to save notes to a file
local function saveToFile(filename, notes)
  local file = io.open(filename, "w")
  if file then
    file.write(notes)
    file.close()
    print("Notes saved successfully!")
  else
    print("Error saving notes!")
  end
end

-- Function to load notes from a file
local function pullFromFile(filename)
  local file = io.open(filename, "r")
  if file then
    local notes = file.read("*all")
    file.close()
    return notes
  else
    print("Error loading notes! File not found.")
    return ""
  end
end

-- Main program loop
local notes = ""

-- Load notes from file if it exists
local filename = "notes.txt"
notes = pullFromFile(filename)

repeat
  -- Display current notes
  if notes ~= "" then
    print("\nCurrent Notes:")
    print(notes)
  end

  -- Get user input for action
  local action = collectUserInput("Enter (n)ew note, (s)ave, (l)oad, or (q)uit:")

  if action == "n" then
    -- Add new note
    local new_note = collectUserInput("Enter your note:")
    notes = notes .. "\n" .. new_note
  elseif action == "s" then
    -- Save notes to file
    saveToFile(filename, notes)
  elseif action == "l" then
    -- Load notes from file
    notes = pullFromFile(filename)
  end

until action == "q"

print("Exiting...")
  