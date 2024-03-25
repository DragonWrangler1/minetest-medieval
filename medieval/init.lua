local S = minetest.get_translator(minetest.get_current_modname())

local MODPATH = minetest.get_modpath("medieval")
medieval = {}

medieval.gui_bg = "background[1,1;1,1;medieval_formspec_background.png;true;7]"
medieval.gui_bg_img = "background[1,1;1,1;medieval_formspec_background.png;true;7]"
medieval.gui_slots  = "listcolors[#2a2a2aAA;#2a2a2a;#141318;#21323a;#FFF]"


if minetest.settings:get_bool("medieval_sign_formspec") then

medieval.formbg = (medieval.gui_bg or "")..
	(medieval.gui_bg_img or "")..
	(default.gui_slots or "")
	
else

medieval.formbg = (default.gui_bg or "")..
	(default.gui_bg_img or "")..
	(default.gui_slots or "")
	
end

if minetest.settings:get_bool("medieval_inv_formspec") then

minetest.register_on_joinplayer(function(player)
	-- Set formspec prepend
	local formspec = [[
			bgcolor[#080808BB;true]
			listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF] ]]
	local name = player:get_player_name()
	local info = minetest.get_player_information(name)
	if info.formspec_version > 1 then
		formspec = formspec .. "background9[5,5;1,1;medieval_formspec_background_inv.png;true;0.2]"
	else
		formspec = formspec .. "background[5,5;1,1;medieval_formspec_background.png;true]"
	end
	player:set_formspec_prepend(formspec)

end)

else 

end
if minetest.settings:get_bool("medieval_hotbar") then
--if minetest.settings:get_bool('medieval_hotbar', true) then
minetest.register_on_joinplayer(function(player)

player:hud_set_hotbar_image("medieval_formspec_background_2.png")
player:hud_set_hotbar_selected_image("medieval_formspec_background.png")


end)

else 

end



-- Load other files --

dofile(MODPATH.."/medieval_tools.lua")
dofile(MODPATH.."/nodes.lua")
dofile(MODPATH.."/signs.lua")
dofile(MODPATH.."/boxes.lua")

--==============--
--OPTIONAL FILEs--
--==============--
