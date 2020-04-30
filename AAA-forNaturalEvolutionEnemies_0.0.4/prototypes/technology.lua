data:extend(
{  
{
    type = "technology",
    name = "ConvertAlienArtefact",
	icon = "__AAA-forNaturalEvolutionEnemies__/graphics/icon/ConvertAlienArtefact.png",
    icon_size = 100,
    prerequisites = {"engine"},
    effects =
    {      
		{
			type = "unlock-recipe",
			recipe = "ConvertAlienArtefact"
		},
    },
    unit =
    {
      time = 60,
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
      },
    },
    order = "w",
  }
 })