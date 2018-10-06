data:extend(
{
  {
    type = "tool",
    name = "erlenmeyer-alien-1",
    icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-1.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},	
	subgroup = "test-subgroup",
    stack_size = 120,
	durability = 60,
	order = "a[AAA]-b[erlenmeyer-alien-1]"
  },
  {
    type = "tool",
    name = "erlenmeyer-alien-2",
    icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-2.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},	
	subgroup = "test-subgroup",
    stack_size = 120,
	durability = 60,
	order = "a[AAA]-c[erlenmeyer-alien-2]"
  },
  {
    type = "tool",
    name = "erlenmeyer-alien-3",
    icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-3.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},	
	subgroup = "test-subgroup",
    stack_size = 120,
	durability = 60,
	order = "a[AAA]-c[erlenmeyer-alien-3]"
  },
   {
    type = "tool",
    name = "erlenmeyer-alien-4",
    icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-4.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},	
	subgroup = "test-subgroup",
    stack_size = 120,
	durability = 60,
	order = "a[AAA]-c[erlenmeyer-alien-4]"
  },
  {
    type = "item",
    name = "uranium-fuel-cell_alien",
    icon = "__AAA-agile-alien-academy__/graphics/icon/uranium-fuel-cell_alien.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "r[uranium-processing]-a[uranium-fuel-cell]",
    fuel_category = "nuclear",
    burnt_result = "used-up-uranium-fuel-cell",
    fuel_value = "8000GJ",
    stack_size = 50
  },
  {
    type = "item",
    name = "uranium-360",
    icon = "__AAA-agile-alien-academy__/graphics/icon/uranium-360.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "r[uranium-360]",
    stack_size = 100
  },
    {
    type = "item",
    name = "nuclear-fuel_alien",
    icon = "__AAA-agile-alien-academy__/graphics/icon/nuclear-fuel_alien.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    fuel_category = "chemical",
    fuel_value = "8TJ",
    fuel_acceleration_multiplier = 4.5,
    fuel_top_speed_multiplier = 2.15,
    -- fuel_glow_color = {r = 0.1, g = 1, b = 0.1},
    subgroup = "intermediate-product",
    order = "q[uranium-rocket-fuel]",
    stack_size = 1
  },
}
)