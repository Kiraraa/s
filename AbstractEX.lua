lib = library:Create("UI Library")
lib:Divider("Aimbot")
lib:Toggle("Toggle", "Toggles the aimbot on", false, function(state)
	print(state)
end)
lib:Toggle("FOV", "Changes the fov of the aimbot", true, function(state)
	print(state)
end)
lib:Toggle("Silent Aim", "Enables silent aim (must have aimbot on)")
lib:Divider("Teleports")
lib:Dropdown("Dropdown", "Description of the dropdown", {"#1", "#2", "#3"}, function(option)
	print(option)
end)
lib:Divider("Esp")
lib:Toggle("Toggle", "Turns the esp on")
lib:Toggle("Friendly esp", "Turns on friendly esp")
lib:Divider("Credits")
lib:Button("Copy discord link", "Copies the discord link to your clipboard", function()
	print("Copied")
end)