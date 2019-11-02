name = "Freezer"
description = "Freezereeze all your foods and your Thermal Stone."
author = "Afro1967"
version = "4.0"

forumthread = ""

api_version = 6

dont_starve_compatible = true
reign_of_giants_compatible = true
shipwrecked_compatible = true
hamlet_compatible = true

icon_atlas = "freezer.xml"
icon = "freezer.tex"

configuration_options =
{
    {
        name = "CutStone",
        label = "Cut Stones",
        options =
    {
        {description = "2", data = 2},
        {description = "Default 4", data = 4},
        {description = "6", data = 6},
        {description = "8", data = 8},
        {description = "10", data = 10},

    },
        default = 4
    },
    {
        name = "Gears",
        label = "Gears",
        options =
    {
        {description = "Default 1", data = 1},
        {description = "2 ", data = 2},
        {description = "3", data = 3},
        {description = "4", data = 4},
        {description = "5", data = 5},

    },
        default = 1
    },
    {
        name = "Bluegem",
        label = "Blue Gems",
        options =
    {
        {description = "Default 1", data = 1},
        {description = "2", data = 2},
        {description = "3", data = 3},
        {description = "4", data = 4},
        {description = "5", data = 5},

    },
        default = 1
    },

}
