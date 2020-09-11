---@param item EsvItem
---@param tooltip TooltipData
local function OnItemTooltip(item, tooltip)
	if item ~= nil and item:HasTag("LLNWIZ_RenamingWand") then
		local element = tooltip:GetElement("ArmorSlotType")
		if element == nil then
			element = {
				Type = "ArmorSlotType",
				Label = ""
			}
			tooltip:AppendElement(element)
		end
		element.Label = Ext.GetTranslatedStringFromKey("LLNWIZ_RenamingWand") or "Wand (Offhand)"
	end
end

Ext.RegisterListener("SessionLoaded", function()
	Game.Tooltip.RegisterListener("Item", nil, OnItemTooltip)
	---@type TranslatedString
	--local ts = Mods.LeaderLib.Classes.TranslatedString
	--UI.RegisterItemTooltipTag("LLNWIZ_RenamingWand", ts:Create("", ""), ts:Create("", ""))
end)