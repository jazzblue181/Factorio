data:extend(
{
  {
    type = "recipe",
    name = "erlenmeyer-alien-1",
	group = "AAA",
    enabled = false,
	energy_erlenmeyerd = 10,
    ingredients =
    {
		{"biter-flesh", 5}--100
    },
    result = "erlenmeyer-alien-1",
	result_count=3  
  },
  {
    type = "recipe",
    name = "erlenmeyer-alien-2",
	group = "AAA",
    enabled = false,
	energy_erlenmeyerd = 20,
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
	energy_erlenmeyerd = 40,
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
	energy_erlenmeyerd = 40,
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
    result_count = 2
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
  }
  })