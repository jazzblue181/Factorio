data:extend(
{
  {
    type = "recipe",
    name = "fiole-alien-1",
	group = "AAA",
    enabled = true,
	energy_required = 6,
    ingredients =
    {
		{"biter-flesh", 120}
    },
    result = "fiole-alien-1"
  },
  {
    type = "recipe",
    name = "fiole-alien-2",
	group = "AAA",
    enabled = true,
	energy_required = 12,
    ingredients =
    {
		{"fiole-alien-1", 120}
    },
    result = "fiole-alien-2"
  }
  })