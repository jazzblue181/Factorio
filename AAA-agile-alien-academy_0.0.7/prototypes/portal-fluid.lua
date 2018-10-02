-- portal fluid on control.lua


-- technology
data:extend({
  {
    type = "technology",
    name = "fluid-projector",
    icon = "__AAA-agile-alien-academy__/graphics/portal_fluid/technology/fluid-projector.png",
    icon_size = 960,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fluid-projector"
      }
    },
    prerequisites = {"flammables", "military-2"},
    unit =
    {
      count = 20,
      ingredients =
      {
        {"erlenmeyer-alien-1", 1},
        {"erlenmeyer-alien-2", 1}
      },
      time = 15
    },
    order = "e-c-b"
  },
    {
    type = "technology",
    name = "fluid-projector-ammo-frost",
    icon = "__AAA-agile-alien-academy__/graphics/portal_fluid/technology/fluid-projector-ammo-frost.png",
    icon_size = 720,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fluid-projector-ammo-frost"
      }
    },
    prerequisites = {"fluid-projector"},
    unit =
    {
      count = 20,
      ingredients =
      {
        {"erlenmeyer-alien-1", 1},
        {"erlenmeyer-alien-2", 1}
      },
      time = 15
    },
    order = "e-c-b"
  },
      {
    type = "technology",
    name = "fluid-projector-ammo-defrost",
    icon = "__AAA-agile-alien-academy__/graphics/portal_fluid/technology/fluid-projector-ammo-defrost.png",
    icon_size = 720,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fluid-projector-ammo-defrost"
      }
    },
    prerequisites = {"fluid-projector","fluid-projector-ammo-frost"},
    unit =
    {
      count = 20,
      ingredients =
      {
        {"erlenmeyer-alien-1", 1},
        {"erlenmeyer-alien-2", 1}
      },
      time = 15
    },
    order = "e-c-b"
  },
})

-- fluid-projector
require "util"

local function make_color(r_,g_,b_,a_)
  return { r = r_ * a_, g = g_ * a_, b = b_ * a_, a = a_ }
end

data:extend({
  {
    type = "trivial-smoke",
    name = "fluid-projector-smoke",
    flags = {"not-on-map"},
    duration = 300,
    fade_in_duration = 0,
    fade_away_duration = 60,
    spread_duration = 600,
    spread_delay = 120,
    start_scale = 1,
    end_scale = 2,
    color = make_color(1, 1, 1, 0.1),
    cyclic = true,
    affected_by_wind = true,
    animation =
    {
      width = 152,
      height = 120,
      line_length = 5,
      frame_count = 60,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0.53125, -0.4375},
      priority = "high",
      flags = { "compressed" },
      animation_speed = 0.25,
      filename = "__AAA-agile-alien-academy__/graphics/portal_fluid/entity/smoke/smoke.png"
    }
  }
})

data:extend(
{
  {
    type = "corpse",
    name = "fluid-projector-remnants-frost",
    icon = "__base__/graphics/icons/remnants.png",
    icon_size = 32,
    flags = {"placeable-neutral", "not-on-map"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    subgroup = "remnants",
    order="d[remnants]-a[generic]-a[small]",
    time_before_removed = 60 * 60 * 5 / 15, -- 15 minutes / 15 = 1 min
    final_render_layer = "lower-object",
 -- animation = nil
    animation =
     {
      {
        width = 75,
        height = 75,
        frame_count = 1,
        direction_count = 1,
        filename = "__AAA-agile-alien-academy__/graphics/portal_fluid/entity/fluid-projector-stream/fluid-projector-remnants-frost.png"
      },
      {
        width = 75,
        height = 75,
        frame_count = 1,
        direction_count = 1,
        y = 75,
        filename = "__AAA-agile-alien-academy__/graphics/portal_fluid/entity/fluid-projector-stream/fluid-projector-remnants-frost.png"
      },
      {
        width = 75,
        height = 75,
        frame_count = 1,
        direction_count = 1,
        y = 150,
        filename = "__AAA-agile-alien-academy__/graphics/portal_fluid/entity/fluid-projector-stream/fluid-projector-remnants-frost.png"
      }
   },
},
  {
    type = "corpse",
    name = "fluid-projector-remnants-defrost",
    icon = "__base__/graphics/icons/remnants.png",
    icon_size = 32,
    flags = {"placeable-neutral", "not-on-map"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    tile_width = 1,
    tile_height = 1,
    selectable_in_game = false,
    subgroup = "remnants",
    order="d[remnants]-a[generic]-a[small]",
    time_before_removed = 60 * 60 * 5 / 15, -- 15 minutes / 15 = 1 min
    final_render_layer = "lower-object",
 -- animation = nil
    animation =
     {
      {
        width = 75,
        height = 75,
        frame_count = 1,
        direction_count = 1,
        filename = "__AAA-agile-alien-academy__/graphics/portal_fluid/entity/fluid-projector-stream/fluid-projector-remnants-defrost.png"
      },
      {
        width = 75,
        height = 75,
        frame_count = 1,
        direction_count = 1,
        y = 75,
        filename = "__AAA-agile-alien-academy__/graphics/portal_fluid/entity/fluid-projector-stream/fluid-projector-remnants-defrost.png"
      },
      {
        width = 75,
        height = 75,
        frame_count = 1,
        direction_count = 1,
        y = 150,
        filename = "__AAA-agile-alien-academy__/graphics/portal_fluid/entity/fluid-projector-stream/fluid-projector-remnants-defrost.png"
      }
   },
}
})

data:extend(
{
  {
    type = "stream",
    name = "handheld-fluid-projector-stream-frost",
    flags = {"not-on-map"},
    working_sound_disabled =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    },

    smoke_sources =
    {
      {
        name = "fluid-projector-smoke",
        frequency = 0.10,
        position = {0.0, 0},
        starting_frame_deviation = 60
      }
    },

    particle_buffer_size = 65,
    particle_spawn_interval = 1,
    particle_spawn_timeout = 1,
    particle_vertical_acceleration = 0.005 * 0.6,
    particle_horizontal_speed = 0.25,
    particle_horizontal_speed_deviation = 0.0035,
    particle_start_alpha = 1,
    particle_end_alpha = 0.8,
    particle_start_scale = 0.1,
    particle_loop_frame_count = 3,
    particle_fade_out_threshold = 0.9,
    particle_loop_exit_threshold = 0.25,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "fluid-projector-remnants-frost",
              trigger_created_entity = true,			  
			}      
          }}}},
    spine_animation =
    {
      filename = "__AAA-agile-alien-academy__/graphics/portal_fluid/entity/fluid-projector-stream/fluid-projector-stream-spine.png",
      blend_mode = "additive-soft",
      --tint = {r=1, g=1, b=1, a=0.5},
      line_length = 4,
      width = 32,
      height = 18,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      animation_speed = 1,
      scale = 0.60,
      shift = {0, 0},
    },

    particle =
    {
      filename = "__AAA-agile-alien-academy__/graphics/portal_fluid/entity/fluid-projector-stream/fluid-projector-fumes.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      frame_count = 32,
      line_length = 8,
      scale = 1.5,
    },
  },
    {
    type = "stream",
    name = "handheld-fluid-projector-stream-defrost",
    flags = {"not-on-map"},
    working_sound_disabled =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    },

    smoke_sources =
    {
      {
        name = "fluid-projector-smoke",
        frequency = 0.10,
        position = {0.0, 0},
        starting_frame_deviation = 60
      }
    },

    particle_buffer_size = 65,
    particle_spawn_interval = 1,
    particle_spawn_timeout = 1,
    particle_vertical_acceleration = 0.005 * 0.6,
    particle_horizontal_speed = 0.25,
    particle_horizontal_speed_deviation = 0.0035,
    particle_start_alpha = 1,
    particle_end_alpha = 0.8,
    particle_start_scale = 0.1,
    particle_loop_frame_count = 3,
    particle_fade_out_threshold = 0.9,
    particle_loop_exit_threshold = 0.25,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "fluid-projector-remnants-defrost",
              trigger_created_entity = true,			  
			}      
          }}}},
    spine_animation =
    {
      filename = "__AAA-agile-alien-academy__/graphics/portal_fluid/entity/fluid-projector-stream/fluid-projector-stream-spine.png",
      blend_mode = "additive-soft",
      --tint = {r=1, g=1, b=1, a=0.5},
      line_length = 4,
      width = 32,
      height = 18,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      animation_speed = 1,
      scale = 0.60,
      shift = {0, 0},
    },

    particle =
    {
      filename = "__AAA-agile-alien-academy__/graphics/portal_fluid/entity/fluid-projector-stream/fluid-projector-fumes.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      frame_count = 32,
      line_length = 8,
      scale = 1.5,
    },
  }
  })
  
-- ammo
data:extend(
{
  {
    type = "ammo",
    name = "fluid-projector-ammo-frost",
    icon = "__AAA-agile-alien-academy__/graphics/portal_fluid/icons/fluid-projector-ammo-frost.png",
    icon_size = 720,
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "fluid-projector",
      target_type = "position",
      clamp_position = true,
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "stream",
          stream = "handheld-fluid-projector-stream-frost",
         -- min_range = 2,
		 -- max_length = 25,
         -- duration = 320,		  
        }
      }
    },
    magazine_size = 100,
    subgroup = "fluid-subgroup",
    order = "e[fluid-projector]",
    stack_size = 50
  },
    {
    type = "ammo",
    name = "fluid-projector-ammo-defrost",
    icon = "__AAA-agile-alien-academy__/graphics/portal_fluid/icons/fluid-projector-ammo-defrost.png",
    icon_size = 720,
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "fluid-projector",
      target_type = "position",
      clamp_position = true,
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "stream",
          stream = "handheld-fluid-projector-stream-defrost",
         -- min_range = 2,
		 -- max_length = 25,
         -- duration = 320,		  
        }
      }
    },
    magazine_size = 100,
    subgroup = "fluid-subgroup",
    order = "e[fluid-projector]",
    stack_size = 50
  }
})
-- ammo category
data:extend({
  {
    type = "ammo-category",
    name = "fluid-projector"
  }
})
-- gun
data:extend(
{
  {
    type = "gun",
    name = "fluid-projector",
    icon = "__AAA-agile-alien-academy__/graphics/portal_fluid/icons/fluid-projector.png",
    icon_size = 960,
    flags = {"goes-to-main-inventory"},
    subgroup = "fluid-subgroup",
    order = "e[fluid-projector]",
    attack_parameters =
    {
      type = "stream",
      ammo_category = "fluid-projector",
      cooldown = 1,
      movement_slow_down_factor = 0.6,
      projectile_creation_distance = 0.6,
      gun_barrel_length = 0.8,
      gun_center_shift = { 0, -1 },
      range = 25,
      min_range = 2,	 
      cyclic_sound =
      {
        begin_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-start.ogg",
            volume = 0.7
          }
        },
        middle_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-mid.ogg",
            volume = 0.7
          }
        },
        end_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-end.ogg",
            volume = 0.7
          }
        }
      }
    },
    stack_size = 5
  }
})
-- fluid recipe 
data:extend(
{
  {
    type = "recipe",
    name = "fluid-projector-ammo-frost",
    category = "chemistry",
    enabled = false,
    energy_erlenmeyerd = 3,
    ingredients =
    {   
	  {"erlenmeyer-alien-1", 100},
      {type="fluid", name="water", amount=5}
    },
    result = "fluid-projector-ammo-frost"
  },
    {
    type = "recipe",
    name = "fluid-projector-ammo-defrost",
    category = "chemistry",
    enabled = false,
    energy_erlenmeyerd = 3,
    ingredients =
    {   
	  {"erlenmeyer-alien-2", 100},
      {type="fluid", name="water", amount=5}
    },
    result = "fluid-projector-ammo-defrost"
  }
})
-- recipe 
data:extend({
  {
    type = "recipe",
    name = "fluid-projector",
    enabled = false,
    energy_erlenmeyerd = 10,
    ingredients =
    {
      {"steel-plate", 5},
      {"iron-gear-wheel", 50}, 
	  {"empty-barrel",1},
    },
    result = "fluid-projector"
  }
})