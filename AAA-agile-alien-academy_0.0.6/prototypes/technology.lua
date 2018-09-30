data:extend(
{  
{
    type = "technology",
    name = "fioleAlien1",
	icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-1.png",
    icon_size = 32,
    prerequisites = {"engine"},
    effects =
    {      
		{
			type = "unlock-recipe",
			recipe = "fiole-alien-1"
		},
		table.insert(data.raw["lab"]["lab"].inputs,"fiole-alien-1")
    },
    unit =
    {
      time = 60,
      count = 1000,
      ingredients =
      {
        {"biter-flesh", 1},
      },
    },
    order = "w",
  },
{
    type = "technology",
    name = "fioleAlien2",
	icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-2.png",
    icon_size = 32,
    prerequisites = {"fioleAlien1"},
    effects =
    {      
		{
			type = "unlock-recipe",
			recipe = "fiole-alien-2"
		},
		table.insert(data.raw["lab"]["lab"].inputs,"fiole-alien-2")
    },
    unit =
    {
      time = 60,
      count = 2000,
      ingredients =
      {
        {"fiole-alien-1", 1},
      },
    },
    order = "w",
  },
{
    type = "technology",
    name = "fioleAlien3",
	icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-3.png",
    icon_size = 32,
    prerequisites = {"fioleAlien2"},
    effects =
    {      
		{
			type = "unlock-recipe",
			recipe = "fiole-alien-3"
		},
		table.insert(data.raw["lab"]["lab"].inputs,"fiole-alien-3")
    },
    unit =
    {
      time = 60,
      count = 4000,
      ingredients =
      {
        {"fiole-alien-2", 1},
      },
    },
    order = "w",
  },
    {
    type = "technology",
    name = "workeRobotsHyperSpeed1",
    icon_size = 540,
    icon = "__AAA-agile-alien-academy__/graphics/icon/worker-robots-speed_alien.png",
    effects =
    {
      {
        type = "worker-robot-speed",
        modifier = 1.00
      }
    },
    prerequisites = {"worker-robots-speed-5"},
    unit =
    {
      ingredients =
      {
        {"fiole-alien-3", 100},
      },
      time = 60,
      count = 1000,
    },
    order = "c-k-f-e"
  },
      {
    type = "technology",
    name = "workeRobotsHyperSpeed2",
    icon_size = 540,
    icon = "__AAA-agile-alien-academy__/graphics/icon/worker-robots-speed_alien.png",
    effects =
    {
      {
        type = "worker-robot-speed",
        modifier = 2.00
      }
    },
    prerequisites = {"workeRobotsHyperSpeed1"},
    unit =
    {
      ingredients =
      {
        {"fiole-alien-3", 200},
      },
      time = 60,
      count = 1000,
    },
    order = "c-k-f-e"
  },
      {
    type = "technology",
    name = "workeRobotsHyperSpeed3",
    icon_size = 540,
    icon = "__AAA-agile-alien-academy__/graphics/icon/worker-robots-speed_alien.png",
    effects =
    {
      {
        type = "worker-robot-speed",
        modifier = 3.00
      }
    },
    prerequisites = {"workeRobotsHyperSpeed2"},
    unit =
    {
      ingredients =
      {
        {"fiole-alien-3", 300},
      },
      time = 60,
      count = 1000,
    },
    order = "c-k-f-e"
  },
        {
    type = "technology",
    name = "workeRobotsHyperSpeed4",
    icon_size = 540,
    icon = "__AAA-agile-alien-academy__/graphics/icon/worker-robots-speed_alien.png",
    effects =
    {
      {
        type = "worker-robot-speed",
        modifier = 4.00
      }
    },
    prerequisites = {"workeRobotsHyperSpeed3"},
    unit =
    {
      ingredients =
      {
        {"fiole-alien-3", 400},
      },
      time = 60,
      count = 1000,
    },
    order = "c-k-f-e"
  },
          {
    type = "technology",
    name = "workeRobotsHyperSpeed5",
    icon_size = 540,
    icon = "__AAA-agile-alien-academy__/graphics/icon/worker-robots-speed_alien.png",
    effects =
    {
      {
        type = "worker-robot-speed",
        modifier = 5.00
      }
    },
    prerequisites = {"workeRobotsHyperSpeed4"},
    unit =
    {
      ingredients =
      {
        {"fiole-alien-3", 500},
      },
      time = 60,
      count = 1000,
    },
    order = "c-k-f-e"
  },	
})

for i = 1,5 do
	local ingredients = {
			{"fiole-alien-3", 100},
	}
	if i > 4 then
		ingredients = {
			{"fiole-alien-3", 400},
		}
	end
		  
	data:extend({
	  {
		type = "technology",
		name = "workerRobotHighStorage" .. i,
		localised_description = {"technology-description.workerRobotHighStorage", tostring(i)},
		localised_name = {"technology-name.workerRobotHighStorage", tostring(i)},
		icon = "__AAA-agile-alien-academy__/graphics/icon/worker-robots-storage_alien.png",
		effects =
		{
		  {
			type = "worker-robot-storage",
			modifier = 2,
			--effect_description = {"modifier-description.workerRobotHighStorage", tostring("1")}
		  }
		},
		prerequisites = {i == 1 and "worker-robots-storage-3" or "workerRobotHighStorage" .. (i-1)},
		unit =
		{
		  count = i <= 4 and 100*i or 1000*(i-4),
		  ingredients = ingredients,
		  time = 30
		},
		upgrade = true,
		order = "e-n-e",
		icon_size = 640,
	  },
	})
end  
