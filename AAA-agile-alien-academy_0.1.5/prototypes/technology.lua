data:extend(
{  
{
    type = "technology",
    name = "erlenmeyerAlien1",
	icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-1.png",
    icon_size = 32,
    prerequisites = {"engine"},
    effects =
    {      
		{
			type = "unlock-recipe",
			recipe = "erlenmeyer-alien-1"
		},
		table.insert(data.raw["lab"]["lab"].inputs,"erlenmeyer-alien-1")
    },
    unit =
    {
      time = 60,
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
      },
    },
    order = "w",
  },
{
    type = "technology",
    name = "erlenmeyerAlien2",
	icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-2.png",
    icon_size = 32,
    prerequisites = {"erlenmeyerAlien1"},
    effects =
    {      
		{
			type = "unlock-recipe",
			recipe = "erlenmeyer-alien-2"
		},
		table.insert(data.raw["lab"]["lab"].inputs,"erlenmeyer-alien-2")
    },
    unit =
    {
      time = 60,
      count = 2000,---- 2000
      ingredients =
      {
        {"erlenmeyer-alien-1", 1},
      },
    },
    order = "w",
  },
{
    type = "technology",
    name = "erlenmeyerAlien3",
	icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-3.png",
    icon_size = 32,
    prerequisites = {"erlenmeyerAlien2"},
    effects =
    {      
		{
			type = "unlock-recipe",
			recipe = "erlenmeyer-alien-3"
		},
		table.insert(data.raw["lab"]["lab"].inputs,"erlenmeyer-alien-3")
    },
    unit =
    {
      time = 60,
      count = 4000,----4000
      ingredients =
      {
        {"erlenmeyer-alien-2", 1},
      },
    },
    order = "w",
  },
  {
    type = "technology",
    name = "erlenmeyerAlien4",
	icon = "__AAA-agile-alien-academy__/graphics/icon/science-alien-4.png",
    icon_size = 32,
    prerequisites = {"erlenmeyerAlien3"},
    effects =
    {      
		{
			type = "unlock-recipe",
			recipe = "erlenmeyer-alien-4",
		},
		table.insert(data.raw["lab"]["lab"].inputs,"erlenmeyer-alien-4")
    },
    unit =
    {
      time = 60,
      count = 40000,-- 40000
      ingredients =
      {
        {"erlenmeyer-alien-3", 1},
      },
    },
    order = "w",
  },
  {
    type = "technology",
    name = "flaskAlien",
	icon = "__AAA-agile-alien-academy__/graphics/icon/flask_alien.png",
    icon_size = 720,
    prerequisites = {"engine","erlenmeyerAlien3"},
    effects =
    {      
		{
			type = "unlock-recipe",
			recipe = "flask_alien"
		},	
		{
			type = "unlock-recipe",
			recipe = "automation-science-pack_alien"
		},
		{
			type = "unlock-recipe",
			recipe = "logistic-science-pack_alien"
		},	
		{
			type = "unlock-recipe",
			recipe = "chemical-science-pack_alien"
		},
		{
			type = "unlock-recipe",
			recipe = "military-science-pack_alien"
		},
		{
			type = "unlock-recipe",
			recipe = "production-science-pack_alien"
		},
		{
			type = "unlock-recipe",
			recipe = "utility-science-pack_alien"
		},	
		{
			type = "unlock-recipe",
			recipe = "space-science-pack_alien"
		},
    },
    unit =
    {
      time = 60,
      count = 1000,
      ingredients =
      {
        {"erlenmeyer-alien-1", 1},
        {"erlenmeyer-alien-2", 1},
        {"erlenmeyer-alien-3", 1},
        {"erlenmeyer-alien-4", 1},
      },
    },
    order = "w",
  },    
     {
    type = "technology",
    name = "uranium-processing_alien",
    icon = "__AAA-agile-alien-academy__/graphics/icon/uranium-processing_alien.png",
    icon_size = 78,
    effects =
    {
      {
        type = "unlock-recipe",
		recipe = "uranium-processing_alien"
      },
      {
        type = "unlock-recipe",
		recipe = "uranium-fuel-cell_alien"
      },
      {
        type = "unlock-recipe",
		recipe = "nuclear-fuel_alien"
      }
	},
    prerequisites = {"erlenmeyerAlien4","kovarex-enrichment-process"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"erlenmeyer-alien-1", 1},
        {"erlenmeyer-alien-2", 1},
		{"erlenmeyer-alien-3", 1},
        {"erlenmeyer-alien-4", 1},
      },
      time = 15
    },
    order = "e-c-b"
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
        {"erlenmeyer-alien-3", 100},
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
        {"erlenmeyer-alien-3", 200},
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
        {"erlenmeyer-alien-3", 300},
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
        {"erlenmeyer-alien-3", 400},
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
        {"erlenmeyer-alien-3", 500},
      },
      time = 60,
      count = 1000,
    },
    order = "c-k-f-e"
  },	
})

for i = 1,5 do
	local ingredients = {
			{"erlenmeyer-alien-3", 100},
	}
	if i > 4 then
		ingredients = {
			{"erlenmeyer-alien-3", 400},
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

for i = 1,5 do
	local ingredients = {
			{"erlenmeyer-alien-2", 200},
	}
	if i > 4 then
		ingredients = {
			{"erlenmeyer-alien-3", 600},
		}
	end
		  
	data:extend({
	  {
		type = "technology",
		name = "boost_lab" .. i,
		localised_description = {"technology-description.boost_lab", tostring(i)},
		localised_name = {"technology-name.boost_lab", tostring(i)},
		icon = "__AAA-agile-alien-academy__/graphics/icon/boost_Lab.png",
		effects =
		{
		  {
			type = "laboratory-speed",
			modifier = 2.5,
			--effect_description = {"modifier-description.boost_lab", tostring("1")}
		  }
		},
		prerequisites = {i == 1 and "research-speed-5" or "boost_lab" .. (i-1)},
		unit =
		{
		  count = i <= 4 and 100*i or 1000*(i-4),
		  ingredients = ingredients,
		  time = 30
		},
		upgrade = true,
		order = "e-n-e",
		icon_size = 284,
	  },
	})
end  