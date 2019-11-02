    PrefabFiles =
{
	"freezer",
}

    Assets =
{
	Asset( "ATLAS", "images/inventoryimages/freezer.xml"),
	Asset( "IMAGE", "images/inventoryimages/freezer.tex"),
	Asset( "ATLAS", "minimap/freezer.xml" ),
	Asset( "IMAGE", "minimap/freezer.tex" ),
}
    AddMinimapAtlas("minimap/freezer.xml")

local STRINGS = GLOBAL.STRINGS
local RECIPETABS = GLOBAL.RECIPETABS
local Recipe = GLOBAL.Recipe
local Ingredient = GLOBAL.Ingredient
local TECH = GLOBAL.TECH

    local seg_time = 30
    local total_day_time = seg_time*16

    TUNING.ICE_TIME = total_day_time


GLOBAL.STRINGS.NAMES.FREEZER = "Freezer"
STRINGS.RECIPE_DESC.FREEZER = "Nice!"
GLOBAL.STRINGS.CHARACTERS.GENERIC.DESCRIBE.FREEZER = "Should Do Nicely"


    if (GLOBAL.IsDLCEnabled(2)) or (GLOBAL.IsDLCEnabled(3)) 
    then
	local freezer = Recipe("freezer",
{
	Ingredient("cutstone", GetModConfigData("CutStone")),
	Ingredient("gears", GetModConfigData("Gears")),
	Ingredient("bluegem", GetModConfigData("Bluegem")),
},
	RECIPETABS.FARM, TECH.NONE, common, "freezer_placer", 1 )
	freezer.atlas = "images/inventoryimages/freezer.xml"
    freezer.sortkey = -1
    else
	local freezer = Recipe("freezer",
{
    Ingredient("cutstone", GetModConfigData("CutStone")),
    Ingredient("gears", GetModConfigData("Gears")),
    Ingredient("bluegem", GetModConfigData("Bluegem")),
},
	RECIPETABS.FARM, TECH.NONE, common, "freezer_placer", 1 )
	freezer.atlas = "images/inventoryimages/freezer.xml"
    freezer.sortkey = -1
end

local function TintingPostInit(self, num, atlas, bgim, owner, container)
    if container.widgetbgimagetint then
    self.bgimage:SetTint(container.widgetbgimagetint.r, container.widgetbgimagetint.g, container.widgetbgimagetint.b, container.widgetbgimagetint.a)
    end
end
AddClassPostConstruct("widgets/invslot", TintingPostInit)

local function FreezerPostInit(inst)
    inst.components.container.widgetbgatlas = "images/inventoryimages/ui_freezer_3x4.xml"
    inst.components.container.widgetbgimage = "ui_freezer_3x4.tex"
    inst.components.container.widgetbgimagetint = {r=.44,g=.74,b=1,a=1}
end
AddPrefabPostInit("freezer", FreezerPostInit)

