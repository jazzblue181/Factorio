data:extend(
{  
{
    type = "technology",
    name = "fioleAlien1",
	icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-1.png",
    icon_size = 32,
    prerequisites = {"engine"},
    effects =
    {      
		{
			type = "unlock-recipe",
			recipe = "fiole-alien-1"
		},
		table.insert(data.raw["lab"]["lab"].inputs,"fiole-alien-1")
    },
    unit =
    {
      time = 60,
      count = 1000,
      ingredients =
      {
        {"biter-flesh", 1},
      },
    },
    order = "w",
  },
{
    type = "technology",
    name = "fioleAlien2",
	icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-2.png",
    icon_size = 32,
    prerequisites = {"fioleAlien1"},
    effects =
    {      
		{
			type = "unlock-recipe",
			recipe = "fiole-alien-2"
		},
		table.insert(data.raw["lab"]["lab"].inputs,"fiole-alien-2")
    },
    unit =
    {
      time = 60,
      count = 2000,
      ingredients =
      {
        {"fiole-alien-1", 1},
      },
    },
    order = "w",
  },
{
    type = "technology",
    name = "fioleAlien3",
	icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-3.png",
    icon_size = 32,
    prerequisites = {"fioleAlien2"},
    effects =
    {      
		{
			type = "unlock-recipe",
			recipe = "fiole-alien-3"
		},
		table.insert(data.raw["lab"]["lab"].inputs,"fiole-alien-3")
    },
    unit =
    {
      time = 60,
      count = 4000,
      ingredients =
      {
        {"fiole-alien-2", 1},
      },
    },
    order = "w",
  }
}
)