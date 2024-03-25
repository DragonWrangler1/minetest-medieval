local S = minetest.get_translator(minetest.get_current_modname())

	-- ===== --
	-- nodes --
	-- ===== --

minetest.register_alias("medieval_craft:glow_stone", "medieval:glowing_stone")



minetest.register_node("medieval:glowing_stone", {
	description = S("Glowing Stone"),
	tiles = {"medieval_glowing_stone.png"},
	paramtype = "light",
	light_source = 14,
	sunlight_propagates = true,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	output = "medieval:glowing_stone 5",
 recipe = {
		{"default:cobble", "" , "default:cobble"},
		{"", "default:meselamp" ,"" },
		{"default:cobble", "", "default:cobble"},
	}
})

minetest.register_craft({
	output = "medieval:rose_bar 9",
 recipe = {
		{"medieval:rose_bar_block", "" , ""},
		{"", "" ,"" },
		{"", "", "" },
	}
})

minetest.register_craft({
	output = "medieval:rose_bar_block",
 recipe = {
		{"darkage:wood_frame", "darkage:wood_grille" , ""},
		{"", "" ,"" },
		{"", "", "" },
	}
})

minetest.register_alias("medieval_craft:glow_stone_lamp", "medieval:glowing_lamp")


minetest.register_node("medieval:glowing_lamp", {
	description = S("Glowing Stone Lamp"),
	tiles = {"medieval_glowing_lamp.png"},
	paramtype = "light",
	light_source = 14,
	sunlight_propagates = true,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_node("medieval:rose_bar_block", {
	description = S("Rose Bar Block"),
	drawtype = "glasslike",
	tiles = {"medieval_rose_bar.png"},
	paramtype = "light",
	--sunlight_propagates = true,
	groups = {cracky=3, oddly_breakable_by_hand},

})

xpanes.register_pane("rose_bar", {
	description = S("Medieval Rose Bar"),
	textures = {"medieval_rose_bar.png", "", "medieval_xpanes_rose_bar_edge.png"},
	inventory_image = "medieval_rose_bar.png",
	wield_image = "medieval_rose_bar.png",
	sounds = default.node_sound_glass_defaults(),
	groups = {cracky=3, oddly_breakable_by_hand=3},
	recipe = {
		{"medieval:rose_bar_block", "medieval:rose_bar_block", "medieval:rose_bar_block"},
		{"medieval:rose_bar_block", "medieval:rose_bar_block", "medieval:rose_bar_block"}
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "medieval:glowing_lamp 2",
	recipe =  {"darkage:glass","medieval:glowing_stone"},
})

minetest.register_node("medieval:walkable_lamp", {
	description = S("Glowing Walkable Lamp "),
	drawtype = "glasslike",
	tiles = {"medieval_glowing_lamp.png"},
	paramtype = "light",
	climbable = true,
	walkable = false,
	light_source = 14,
	sunlight_propagates = true,
	groups = {cracky=3,oddly_breakable_by_hand=3},
	sounds = default.node_sound_glass_defaults(),
})

minetest.register_craft({
	type = "shapeless",
	output = "medieval:walkable_lamp 2",
	recipe =  {"darkage:glass","medieval:glowing_stone","default:ladder_wood"},
})

minetest.register_craft({
	type = "shapeless",
	output = "medieval:walkable_lamp 2",
	recipe =  {"medieval:glowing_lamp","default:ladder_wood"},
})


-- ==== --
-- rope --
-- ==== --

minetest.register_alias("medieval_craft:rope", "medieval:rope")

minetest.register_node("medieval:rope", {
	description = S("Rope"),
	drawtype = "raillike",
	tiles = {"medieval_rope.png", "medieval_rope_curved.png", "medieval_rope_junction.png", "medieval_rope_crossing.png"},
	inventory_image = "medieval_rope.png",
	wield_image = "medieval_rope.png",
	paramtype = "light",
	walkable = false,
	selection_box = {
		type = "fixed",
                -- but how to specify the dimensions for curved and sideways rails?
                fixed = {-1/2, -1/2, -1/2, 1/2, -1/2+1/16, 1/2},
	},
	groups = {bendy=2,dig_immediate=2,attached_node=1},
})

minetest.register_craft({
	output = "medieval:rope 3",
 recipe = {
		{"farming:cotton", "" , ""},
		{"", "farming:cotton" ,"" },
		{"", "", "farming:cotton"},
	}
})

