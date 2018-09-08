data:extend({  
{
    type = "technology",
    name = "fiole-alien-2",
	icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-2.png",
    icon_size = 32,
    prerequisites =
    {    
	
    },
    effects =
    {      
		{type = "unlock-recipe", recipe = "fiole-alien-2"}
    },
    unit =
    {
      time = 60,
      count = 150,
      ingredients =
      {
        {"fiole-alien-1", 120},
      },
    },
    order = "w",
  }
}
)