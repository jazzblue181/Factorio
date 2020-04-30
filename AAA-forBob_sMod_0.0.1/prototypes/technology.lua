data:extend(
{  
{
    type = "technology",
    name = "ConvertAlienArtefactBob",
	icon = "__AAA-forBob_sMod_0.0.1__/graphics/icon/ConvertAlienArtefact.png",
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