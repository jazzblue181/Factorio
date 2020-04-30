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
    type = "tool",
    name = "flask_alien",
    icon = "__AAA-agile-alien-academy__/graphics/icon/flask_alien.png",
    icon_size = 720,
    flags = {"goes-to-main-inventory"},	
	subgroup = "test-subgroup",
    stack_size = 120,
	durability = 60,
	order = "a[AAA]-c[flask_alien]"
  },
  
  {
    type = "item",
    name = "uranium-fuel-cell_alien",
    icon = "__AAA-agile-alien-academy__/graphics/icon/uranium-fuel-cell_alien.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "a[AAA]-r[uranium-processing]-a[uranium-fuel-cell]",
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
    order = "a[AAA]-r[uranium-360]",
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
    order = "a[AAA]-q[nuclear-fuel_alien]",
    stack_size = 1
  },
  {
    type = "tool",
    name = "alienAAA",
    icon = "__AAA-agile-alien-academy__/graphics/icon/alienAAA.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
	order = "a[AAA]-a[alienAAA]",
	icon_size = 32,
    stack_size = 500,
	durability = 60,
    default_request_amount = 10
  },
   -- {
    -- type = "artillery-projectile_alien",
    -- name = "artillery-projectile_alien",
    -- flags = {"not-on-map"},
    -- acceleration = 0,
    -- direction_only = true,
    -- reveal_map = true,
    -- map_color = {r=1, g=1, b=0},
    -- picture =
    -- {
      -- filename = "__AAA-agile-alien-academy__/graphics/artillery-projectile_alien/hr-shell_alien.png",
      -- width = 64,
      -- height = 64,
      -- scale = 0.5
    -- },
    -- shadow =
    -- {
      -- filename = "__AAA-agile-alien-academy__/graphics/artillery-projectile_alien/hr-shell-shadow_alien.png",
      -- width = 64,
      -- height = 64,
      -- scale = 0.5
    -- },
    -- chart_picture =
    -- {
      -- filename = "__AAA-agile-alien-academy__/graphics/artillery-projectile_alien/artillery-shoot-map-visualization_alien.png",
      -- flags = { "icon" },
      -- frame_count = 1,
      -- width = 64,
      -- height = 64,
      -- priority = "high",
      -- scale = 0.25
    -- },
    -- action =
    -- {
      -- type = "direct",
      -- action_delivery =
      -- {
        -- type = "instant",
        -- target_effects =
        -- {
          -- {
            -- type = "nested-result",
            -- action =
            -- {
              -- type = "area",
              -- radius = 4.0,
              -- action_delivery =
              -- {
                -- type = "instant",
                -- target_effects =
                -- {
                  -- {
                    -- type = "damage",
                    -- damage = {amount = 5000 , type = "physical"}
                  -- },
                  -- {
                    -- type = "damage",
                    -- damage = {amount = 5000 , type = "explosion"}
                  -- }
                -- }
              -- }
            -- }
          -- },
          -- {
            -- type = "create-trivial-smoke",
            -- smoke_name = "artillery-smoke",
            -- initial_height = 0,
            -- speed_from_center = 0.05,
            -- speed_from_center_deviation = 0.005,
            -- offset_deviation = {{-4, -4}, {4, 4}},
            -- max_radius = 4.5,
            -- repeat_count = 4 * 4 * 15
          -- },
          -- {
            -- type = "create-entity",
            -- entity_name = "big-artillery-explosion"
          -- },
          -- {
            -- type = "show-explosion-on-chart",
            -- scale = 8/32
          -- }
        -- }
      -- }
    -- },
    -- final_action =
    -- {
      -- type = "direct",
      -- action_delivery =
      -- {
        -- type = "instant",
        -- target_effects =
        -- {
          -- {
            -- type = "create-entity",
            -- entity_name = "small-scorchmark",
            -- check_buildability = true
          -- }
        -- }
      -- }
    -- },
    -- animation =
    -- {
      -- filename = "__AAA-agile-alien-academy__/graphics/artillery-projectile_alien/bullet_alien.png",
      -- frame_count = 1,
      -- width = 3,
      -- height = 50,
      -- priority = "high"
    -- },
    -- height_from_ground = 280 / 64
  -- },
}
)