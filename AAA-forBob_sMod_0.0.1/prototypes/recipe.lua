data:extend(
{
  {
    type = "recipe",
    name = "ConvertAlienArtefact",
	icon = "__AAA-forBob_sMod_0.0.1__/graphics/icon/ConvertAlienArtefact.png",
    icon_size = 100,
	group = "AAA",
    enabled = false,
	energy_required = 10,
    ingredients =
    {
      {"alien-artifact-green", 1},
      {"alien-artifact-yellow", 1},
      {"alien-artifact-purple", 1},
      {"alien-artifact-blue", 1},
      {"alien-artifact-orange", 1},
      {"alien-artifact-red", 1},
    },
    results =
    {
      {type="item", name="alienAAA", amount="1000", probability="0.001"},
      {type="item", name="alienAAA", amount="100", probability="0.015"},
      {type="item", name="alienAAA", amount="50", probability="0.03"},
      {type="item", name="alienAAA", amount="25", probability="0.06"},
      {type="item", name="alienAAA", amount="12", probability="0.12"},
      {type="item", name="alienAAA", amount="6", probability="0.25"},
      {type="item", name="alienAAA", amount="1", probability="0.5"},
    },
  }, 
})