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
		{"biter-flesh", 100}
    },
    result = "erlenmeyer-alien-1",
	result_count=10  
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
		{"erlenmeyer-alien-1", 100}
    },
    result = "erlenmeyer-alien-2",
	result_count=10  
    
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
		{"erlenmeyer-alien-2", 100}
    },
    result = "erlenmeyer-alien-3",
	result_count=10  
  }
  })