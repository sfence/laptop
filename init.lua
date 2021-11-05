laptop = {}
laptop.class_lib = {}

local modpath = minetest.get_modpath(minetest.get_current_modname())

dofile(modpath..'/themes.lua')
dofile(modpath..'/block_devices.lua')
dofile(modpath..'/app_fw.lua')
dofile(modpath..'/mtos.lua')
dofile(modpath..'/hardware_fw.lua')
dofile(modpath..'/recipe_compat.lua')
dofile(modpath..'/hardware_nodes.lua')
dofile(modpath..'/craftitems.lua')
