data:extend(
{
  {
    type = "recipe",
    name = "fiole-alien-1",
	group = "AAA",
    enabled = false,
	energy_required = 10,
    ingredients =
    {
		{"biter-flesh", 100}
    },
    result = "fiole-alien-1",
	result_count=10  
  },
  {
    type = "recipe",
    name = "fiole-alien-2",
	group = "AAA",
    enabled = false,
	energy_required = 20,
	--count = 600,
	--time = 30
    ingredients =
    {
		{"science-pack-1", 1},
		{"fiole-alien-1", 100}
    },
    result = "fiole-alien-2",
	result_count=10  
    
  },
  {
    type = "recipe",
    name = "fiole-alien-3",
	group = "AAA",
    enabled = false,
	energy_required = 40,
    ingredients =
    {
		{"science-pack-2", 1},
		{"fiole-alien-2", 100}
    },
    result = "fiole-alien-3",
	result_count=10  
  }
  })