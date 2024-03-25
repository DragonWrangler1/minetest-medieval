local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_tool("medieval:sickle_wood", {
	description = S("Wooden sickle"),
	inventory_image = "medieval_medieval_sickle_wood.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			snappy = {times={[2]=0.6, [3]=0.4}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=2},
	},
})

minetest.register_tool("medieval:sickle_stone", {
	description = S("Stone sickle"),
	inventory_image = "medieval_medieval_sickle_stone.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			snappy = {times={[2]=0.5, [3]=0.3}, uses=40, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool("medieval:sickle_steel", {
	description = S("Steel sickle"),
	inventory_image = "medieval_medieval_sickle_steel.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			snappy = {times={[2]=0.4, [3]=0.2}, uses=80, maxlevel=2},
		},
		damage_groups = {fleshy=6},
	},
})

--=======================--
--Added by DragonWrangler--
--=======================--

if minetest.get_modpath("moreores") then

minetest.register_tool("medieval:sickle_mithril", {
	description = S("Mithril sickle"),
	inventory_image = "medieval_medieval_sickle_mithril.png",
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level=0,
		groupcaps={
			snappy = {times={[1]=0.3, [2]=0.2, [3]=0.1}, uses=300, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})

minetest.register_craft({
	output = 'medieval:sickle_mithril',
	recipe = {
		{'moreores:mithril_ingot', '', 'moreores:mithril_ingot'},
		{'', 'moreores:mithril_ingot', 'default:stick'},
		{'', '', 'default:stick'},
	}
})

end

--===--
--END--
--===--

minetest.register_craft({
	output = 'medieval:sickle_wood',
	recipe = {
		{'group:wood', '', 'group:wood'},
		{'', 'group:wood', 'default:stick'},
		{'', '', 'default:stick'},
	}
})

minetest.register_craft({
	output = 'medieval:sickle_stone',
	recipe = {
		{'group:stone', '', 'group:stone'},
		{'', 'group:stone', 'default:stick'},
		{'', '', 'default:stick'},
	}
})

minetest.register_craft({
	output = 'medieval:sickle_steel',
	recipe = {
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'', 'default:steel_ingot', 'default:stick'},
		{'', '', 'default:stick'},
	}
})
