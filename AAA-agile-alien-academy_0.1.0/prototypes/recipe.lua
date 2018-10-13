data:extend(
{
  {
    type = "recipe",
    name = "alienAAA",
	group = "AAA",
    enabled = true,
	energy_required = 10,
    ingredients =
    {
		{"biter-flesh", 5}--100
    },
    result = "alienAAA",	
  },
  {
    type = "recipe",
    name = "erlenmeyer-alien-1",
	group = "AAA",
    enabled = false,
	energy_required = 10,
    ingredients =
    {
		{"alienAAA", 5}--100
    },
    result = "erlenmeyer-alien-1",
	result_count=3  
  },
  {
    type = "recipe",
    name = "erlenmeyer-alien-2",
	group = "AAA",
    enabled = false,
	energy_required = 20,
	--count = 600,
	--time = 30
    ingredients =
    {
		{"science-pack-1", 1},
		{"erlenmeyer-alien-1", 10}--100
    },
    result = "erlenmeyer-alien-2",
	result_count=5
    
  },
  {
    type = "recipe",
    name = "erlenmeyer-alien-3",
	group = "AAA",
    enabled = false,
	energy_required = 40,
    ingredients =
    {
		{"science-pack-2", 1},
		{"erlenmeyer-alien-2", 20}--100
    },
    result = "erlenmeyer-alien-3",
	result_count=7  
  },
    {
    type = "recipe",
    name = "erlenmeyer-alien-4",
	group = "AAA",
    enabled = false,
	energy_required = 40,
    ingredients =
    {
		{"science-pack-3", 1},
		{"erlenmeyer-alien-3", 40}--100
    },
    result = "erlenmeyer-alien-4",
	result_count=9  
  },
    {
    type = "recipe",
    name = "uranium-fuel-cell_alien",
    energy_required = 100,
    enabled = false,
    ingredients =
    {
      {"iron-plate", 10},
      {"uranium-360", 1}
    },
    result = "uranium-fuel-cell_alien",
    result_count = 10
  },
    {
    type = "recipe",
    name = "nuclear-fuel_alien",
    energy_required = 60,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"uranium-360", 1}, {"rocket-fuel", 1}},
    icon = "__AAA-agile-alien-academy__/graphics/icon/nuclear-fuel_alien.png",
    icon_size = 32,
    result = "nuclear-fuel_alien"
  },
  {
    type = "recipe",
    name = "uranium-processing_alien",
    energy_required = 100,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"uranium-235", 69}, {"erlenmeyer-alien-4",1}},
    icon = "__AAA-agile-alien-academy__/graphics/icon/uranium-processing_alien.png",
    icon_size = 78,
    subgroup = "raw-material",
    order = "r[uranium-processing]-d[uranium-processing_alien]",
    results =
    {
      {
        name = "uranium-360",
        probability = 0.05,
        amount = 1
      },
      {
        name = "uranium-235",
        probability = 0.95,
        amount = 19
      }
    }
  },
  -- {
    -- type = "recipe",
    -- name = "artillery-shell_alien",
	-- icon = "__AAA-agile-alien-academy__/graphics/artillery-projectile_alien/artillery-shell_alien.png",
	-- icon_size = 32,
    -- enabled = true,
    -- energy_required = 15,
    -- ingredients =
    -- {
      -- {"explosive-cannon-shell", 4},
      -- {"radar", 1},
      -- {"explosives", 8}
    -- },
    -- result = "artillery-shell_alien",
	-- order = "a[AAA]-d[artillery-shell_alien]",
  -- },
  })