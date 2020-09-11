---@type ModSettings
local settings = nil
-- LeaderLib
if Ext.IsModLoaded("7e737d2f-31d2-4751-963f-be6ccc59cd0c") then
	Ext.RegisterListener("SessionLoaded", function()
		local LeaderLib = Mods.LeaderLib
		local Classes = LeaderLib.Classes
	
		---@type ModSettings
		local ModSettings = Classes.ModSettingsClasses.ModSettings
		settings = ModSettings:Create("c8190ae0-aa68-1d98-a18e-b593ba90d63c")
		settings.Global:AddFlags({
			"LLNWIZ_Settings_CrossPlayerRenamingEnabled",
			"LLNWIZ_Settings_RenameWandDisabled",
		})
		LeaderLib.SettingsManager.AddSettings(settings)
	end)
end