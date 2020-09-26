---@type ModSettings
local settings = nil
-- LeaderLib
if Ext.IsModLoaded("7e737d2f-31d2-4751-963f-be6ccc59cd0c") then
	Ext.RegisterListener("SessionLoaded", function()
		---@type ModSettings
		settings = Mods.LeaderLib.CreateModSettings("c8190ae0-aa68-1d98-a18e-b593ba90d63c")
		settings.Global:AddLocalizedFlags({
			"LLNWIZ_Settings_RenameWandDisabled",
			"LLNWIZ_Settings_CrossPlayerRenamingEnabled",
		})
	end)
end