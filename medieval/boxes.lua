local S = minetest.get_translator(minetest.get_current_modname())

--crafts

minetest.register_craft({
	output = "medieval:box_empty",
	type = shapeless,
 recipe = {
		{"darkage:box", "" , ""},
		{"", "" ,"" },
		{"", "", ""},
	}
})

minetest.register_craft({
	type = shapeless,
	output = "medieval:box_apple",
 recipe = {
		{"medieval:box_empty", "default:apple" , "default:apple"},
		{"default:apple", "default:apple" ,"default:apple" },
		{"default:apple", "default:apple", "default:apple"},
	}
})

minetest.register_craft({
	type = shapeless,
	output = "medieval:box_carrot",
 recipe = {
		{"medieval:box_empty", "farming:carrot" , "farming:carrot"},
		{"farming:carrot", "farming:carrot" ,"farming:carrot" },
		{"farming:carrot", "farming:carrot", "farming:carrot"},
	}
})

minetest.register_craft({
	type = shapeless,
	output = "medieval:box_wheat",
 recipe = {
		{"medieval:box_empty", "farming:wheat" , "farming:wheat"},
		{"farming:wheat", "farming:wheat" ,"farming:wheat" },
		{"farming:wheat", "farming:wheat", "farming:wheat"},
	}
})

minetest.register_craft({
	type = shapeless,
	output = "medieval:box_potato",
 recipe = {
		{"medieval:box_empty", "farming:potato" , "farming:potato"},
		{"farming:potato", "farming:potato" ,"farming:potato" },
		{"farming:potato", "farming:potato", "farming:potato"},
	}
})

minetest.register_craft({
	type = shapeless,
	output = "medieval:box_mushroom",
 recipe = {
		{"medieval:box_empty", "flowers:mushroom_brown" , "flowers:mushroom_brown"},
		{"flowers:mushroom_brown", "flowers:mushroom_brown" ,"flowers:mushroom_brown" },
		{"flowers:mushroom_brown", "flowers:mushroom_brown", "flowers:mushroom_brown"},
	}
}) 
minetest.register_craft({
	type = mixing,
	output = "medieval:box_empty 2",
 recipe = {
		{"medieval:box_apple", "medieval:box_apple" , ""},
		{"", "" ,"" },
		{"", "", ""},
	},
	replacements = {{"medieval:box_apple", "default:apple 16"}}
})

minetest.register_craft({
        type = shapeless,
	output = "medieval:box_empty 2",
 recipe = {
		{"medieval:box_carrot", "medieval:box_carrot" , ""},
		{"", "" ,"" },
		{"", "", ""},
	},
	replacements = {{"medieval:box_carrot", "farming:carrot 16"}}
})

minetest.register_craft({
        type = shapeless,
	output = "medieval:box_empty 2",
 recipe = {
		{"medieval:box_potato", "medieval:box_potato" , ""},
		{"", "" ,"" },
		{"", "", ""},
	},
	replacements = {{"medieval:box_potato", "farming:potato 16"}}
})

minetest.register_craft({
        type = shapeless,
	output = "medieval:box_empty 2",
 recipe = {
		{"medieval:box_wheat", "medieval:box_wheat" , ""},
		{"", "" ,"" },
		{"", "", ""},
	},
	replacements = {{"medieval:box_wheat", "farming:wheat 16"}}
})

minetest.register_craft({
        type = shapeless,
	output = "medieval:box_empty 2",
 recipe = {
		{"medieval:box_mushroom", "medieval:box_mushroom" , ""},
		{"", "" ,"" },
		{"", "", ""},
	},
	replacements = {{"medieval:box_mushroom", "flowers:mushroom_brown 16"}}
})

--nodes

minetest.register_node("medieval:box_empty", {
		description = S("Box"),
		drawtype = "nodebox",
		tiles = {'medieval_box_bottom.png' ,'darkage_box.png', 'darkage_box.png',
		'darkage_box.png', 'darkage_box.png', 'darkage_box.png'
		},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3--[[, wood = 1]]},
		sounds = default.node_sound_wood_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.5, 0.5, 0.5, 0.375}, -- side f
				{-0.5, -0.5, -0.5, 0.5, 0.4, 0.5}, -- bottom
				{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5}, -- side l
				{0.375, -0.5, -0.5, 0.5, 0.5, 0.5},  -- side r
				{-0.5, -0.5, -0.375, 0.5, 0.5, -0.5}, -- frount

			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
	})

minetest.register_node("medieval:box_mushroom", {
		description = S("Box of Mushrooms"),
		drawtype = "nodebox",
		tiles = {'medieval_box_mushroom.png' ,'darkage_box.png', 'darkage_box.png',
		'darkage_box.png', 'darkage_box.png', 'darkage_box.png'
		},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3--[[, wood = 1]]},
		sounds = default.node_sound_wood_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.5, 0.5, 0.5, 0.375}, -- side f
				{-0.5, -0.5, -0.5, 0.5, 0.4, 0.5}, -- bottom
				{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5}, -- side l
				{0.375, -0.5, -0.5, 0.5, 0.5, 0.5},  -- side r
				{-0.5, -0.5, -0.375, 0.5, 0.5, -0.5}, -- frount

			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
	})


	minetest.register_node("medieval:box_apple", {
		description = S("Box of Apples"),
		drawtype = "nodebox",
		tiles = {'medieval_box_apple.png' ,'darkage_box.png', 'darkage_box.png',
		'darkage_box.png', 'darkage_box.png', 'darkage_box.png'
		},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3--[[, wood = 1]]},
		sounds = default.node_sound_wood_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.5, 0.5, 0.5, 0.375}, -- side f
				{-0.5, -0.5, -0.5, 0.5, 0.4, 0.5}, -- bottom
				{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5}, -- side l
				{0.375, -0.5, -0.5, 0.5, 0.5, 0.5},  -- side r
				{-0.5, -0.5, -0.375, 0.5, 0.5, -0.5}, -- frount

			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
	})


minetest.register_node("medieval:box_carrot", {
		description = S("Box of Carrots"),
		drawtype = "nodebox",
		tiles = {'medieval_box_carrot.png' ,'darkage_box.png', 'darkage_box.png',
		'darkage_box.png', 'darkage_box.png', 'darkage_box.png'
		},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3--[[, wood = 1]]},
		sounds = default.node_sound_wood_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.5, 0.5, 0.5, 0.375}, -- side f
				{-0.5, -0.5, -0.5, 0.5, 0.4, 0.5}, -- bottom
				{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5}, -- side l
				{0.375, -0.5, -0.5, 0.5, 0.5, 0.5},  -- side r
				{-0.5, -0.5, -0.375, 0.5, 0.5, -0.5}, -- frount

			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
	})


minetest.register_node("medieval:box_potato", {
		description = S("Box of Potatoes"),
		drawtype = "nodebox",
		tiles = {'medieval_box_potato.png' ,'darkage_box.png', 'darkage_box.png',
		'darkage_box.png', 'darkage_box.png', 'darkage_box.png'
		},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3--[[, wood = 1]]},
		sounds = default.node_sound_wood_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.5, 0.5, 0.5, 0.375}, -- side f
				{-0.5, -0.5, -0.5, 0.5, 0.4, 0.5}, -- bottom
				{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5}, -- side l
				{0.375, -0.5, -0.5, 0.5, 0.5, 0.5},  -- side r
				{-0.5, -0.5, -0.375, 0.5, 0.5, -0.5}, -- frount

			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
	})

minetest.register_node("medieval:box_wheat", {
		description = S("Box of Wheat"),
		drawtype = "nodebox",
		tiles = {'medieval_box_wheat.png' ,'darkage_box.png', 'darkage_box.png',
		'darkage_box.png', 'darkage_box.png', 'darkage_box.png'
		},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3--[[, wood = 1]]},
		sounds = default.node_sound_wood_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.5, 0.5, 0.5, 0.375}, -- side f
				{-0.5, -0.5, -0.5, 0.5, 0.4, 0.5}, -- bottom
				{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5}, -- side l
				{0.375, -0.5, -0.5, 0.5, 0.5, 0.5},  -- side r
				{-0.5, -0.5, -0.375, 0.5, 0.5, -0.5}, -- frount

			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
	})
	
	minetest.register_node("medieval:box_fish", {
		description = S("Box of Fish"),
		drawtype = "nodebox",
		tiles = {'medieval_box_fish.png' ,'darkage_box.png', 'darkage_box.png',
		'darkage_box.png', 'darkage_box.png', 'darkage_box.png'
		},
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 3--[[, wood = 1]]},
		sounds = default.node_sound_wood_defaults(),
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0.5, 0.5, 0.5, 0.375}, -- side f
				{-0.5, -0.5, -0.5, 0.5, 0.4, 0.5}, -- bottom
				{-0.5, -0.5, -0.5, -0.375, 0.5, 0.5}, -- side l
				{0.375, -0.5, -0.5, 0.5, 0.5, 0.5},  -- side r
				{-0.5, -0.5, -0.375, 0.5, 0.5, -0.5}, -- frount

			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
			},
		},
	})



