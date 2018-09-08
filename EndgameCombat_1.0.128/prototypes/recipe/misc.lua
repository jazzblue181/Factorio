 data:extend(
{
  {
    type = "recipe",
    name = "power-armor-3",
    enabled = false,
    energy_required = 60,
    ingredients = {
		{"power-armor-mk2", 1},
	},
    result = "power-armor-3"
  },
  
  {
    type = "recipe",
    name = "advanced-laser-defense-equipment",
    enabled = false,
    energy_required = 40,
    ingredients = {
		{"personal-laser-defense-equipment", 1},
		{"plasma-turret", 5},
		{"processing-unit", 10},
		{"electronic-circuit", 25},
	},
    result = "advanced-laser-defense-equipment"
  },
  
    {
    type = "recipe",
    name = "better-tank",
    enabled = "false",
    ingredients =
    {	
      {"tank", 1},
      {"engine-unit", 24},
      {"iron-gear-wheel", 40},
      {"advanced-circuit", 25}
    },
    result = "better-tank"
  }
}
)

 data:extend(
{
 {
    type = "recipe",
    name = "biter-cooking",
    enabled = "true",
    ingredients = {{"biter-flesh", 5}},
    energy_required = 2,
    category = "smelting",
    result = "cooked-biter"
  },
   {
    type = "recipe",
    name = "biter-fuel",
    enabled = "false",
	icon = "__EndgameCombat__/graphics/icons/biter-fuel.png",
	icon_size = 32,
    ingredients = {
		{"biter-flesh", 25},
		{type="fluid", name="sulfuric-acid", amount=40}
	},
    energy_required = 10,
    category = "chemistry",
    result = "solid-fuel"
  }
})

table.insert(data.raw.technology["sulfur-processing"].effects, {type="unlock-recipe", recipe="biter-fuel"})