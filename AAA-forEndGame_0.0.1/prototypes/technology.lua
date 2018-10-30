data:extend(
{  
{
    type = "technology",
    name = "ConvertBiterFlesh",
	icon = "__AAA-forEndGame__/graphics/icon/ConvertBiterFlesh.png",
    icon_size = 100,
    prerequisites = {"engine"},
    effects =
    {      
		{
			type = "unlock-recipe",
			recipe = "ConvertBiterFlesh"
		},
    },
    unit =
    {
      time = 60,
      count = 1000,
      ingredients =
      {
        {"science-pack-1", 1},
      },
    },
    order = "w",
  }
 })