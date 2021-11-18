laptop.register_hardware("hades_laptop:core", {
	description = "CP Core",
	infotext = 'CP Core',
	sequence = { "closed", "open", "open_on" },
	custom_theme = "Red",
	hw_capabilities = { 'hdd', 'usb', 'net' },
	battery_capacity = 80000,
	inventory_image = "laptop_lap_car_item.png",
	node_defs = {
		["open"] = {
			hw_state = "power_off",
			tiles = {
				"laptop_lap_car_open_top.png",
				"laptop_lap_car_sc_open_bottom.png^laptop_lap_car_bottom.png",
				"laptop_lap_car_open_right.png",
				"laptop_lap_car_open_left.png",
				"laptop_lap_car_sc_open_bottom.png^laptop_lap_car_open_back.png",
				"laptop_lap_car_open_front.png^laptop_lap_car_sc_open_front.png",
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.4375, -0.5, -0.4375, 0.4375, -0.4375, 0.375}, -- base_open
					{-0.4375, -0.4375, 0.375, 0.4375, 0.3125, 0.4375}, -- sc_open
				}
			}
		},
		["open_on"] = {
			hw_state = "resume",
			_power_off_seq = "open",
			_eu_demand = 100,
			_battery_charge = 400,
			light_source = 4,
			tiles = {
				"laptop_lap_car_open_on_top.png",
				"laptop_lap_car_sc_open_bottom.png^laptop_lap_car_bottom.png",
				"laptop_lap_car_open_right.png",
				"laptop_lap_car_open_left.png",
				"laptop_lap_car_sc_open_bottom.png^laptop_lap_car_open_back.png",
				"laptop_lap_car_open_front.png^laptop_lap_car_sc_open_on_front.png",
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.4375, -0.5, -0.4375, 0.4375, -0.4375, 0.375}, -- base_open
					{-0.4375, -0.4375, 0.375, 0.4375, 0.3125, 0.4375}, -- sc_open
				  }
			       }
			    },
		["closed"] = {
			hw_state = "power_off",
			tiles = {
				"laptop_lap_car_closed_top.png",
				"laptop_lap_car_bottom.png",
				"laptop_lap_car_closed_right.png",
				"laptop_lap_car_closed_left.png",
				"laptop_lap_car_closed_back.png",
				"laptop_lap_car_closed_front.png",
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.375}, -- base_closed
				}
			}
		}
	}
})

-- NO PROCESOR IN RECIPE???
--[[
minetest.register_craft({
	output = 'hades_laptop:core_item',
	recipe = {
	{'dye:red', 'hades_laptop:lcd', 'dye:red', },
	{'hades_laptop:HDD', 'hades_laptop:motherboard', 'hades_laptop:gpu', },
	{'hades_laptop:bat', 'hades_laptop:case', 'dye:red', },
	}
})
--]]

laptop.register_hardware("hades_laptop:printer", {
	description = "Flash Printex",
	infotext = 'Flash Printex',
	sequence = { "off", "powersave", "on" },
	custom_theme = "PrintOS",
	custom_launcher = "printer_launcher",
	hw_capabilities = {"hdd"},
	node_defs = {

		["powersave"] = {
			hw_state = "power_off",
			_power_off_seq = "off",
			tiles = {
				"laptop_printer_top.png",
				"laptop_printer_bottom.png",
				"laptop_printer_right.png",
				"laptop_printer_left.png",
				"laptop_printer_back.png",
				"laptop_printer_front.png",
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {choppy=2, oddly_breakably_by_hand=2, dig_immediate = 2, laptop_printer = 1, technic_machine = 1, technic_lv = 1},
			node_box = {
				type = "fixed",
				fixed = {
					{-0.375, -0.5, -0.125, 0.375, -0.125, 0.3125}, -- core
					{-0.25, -0.5, -0.375, 0.25, -0.4375, -0.125}, -- tray
					{-0.25, -0.125, 0.25, 0.25, 0.125, 0.3125}, -- charger
				}
			}
		},
		["on"] = {
			hw_state = "power_on",
			_power_off_seq = "off",
			_eu_demand = 100,
			tiles = {
				"laptop_printer_top.png",
				"laptop_printer_bottom.png",
				"laptop_printer_right.png",
				"laptop_printer_left.png",
				"laptop_printer_back.png",
				"laptop_printer_front_on.png",
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			groups = {choppy=2, oddly_breakably_by_hand=2, dig_immediate = 2, laptop_printer = 1, technic_machine = 1, technic_lv = 1},
			node_box = {
				type = "fixed",
				fixed = {
					{-0.375, -0.5, -0.125, 0.375, -0.125, 0.3125}, -- core
					{-0.25, -0.5, -0.375, 0.25, -0.4375, -0.125}, -- tray
					{-0.25, -0.125, 0.25, 0.25, 0.125, 0.3125}, -- charger
				  }
			       }
			    },
		["off"] = {
			hw_state = "power_off",
			tiles = {
				"laptop_printer_top.png",
				"laptop_printer_bottom.png",
				"laptop_printer_right.png",
				"laptop_printer_left.png",
				"laptop_printer_back.png",
				"laptop_printer_front_off.png",
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.375, -0.5, -0.125, 0.375, -0.125, 0.3125}, -- core
					{-0.25, -0.5, -0.375, 0.25, -0.4375, -0.125}, -- tray
					{-0.25, -0.125, 0.25, 0.25, 0.125, 0.3125}, -- charger
				}
			}
		}
	}
})

minetest.register_craft({
	output = 'hades_laptop:printer_off',
	recipe = {
	{'', 'hades_laptop:motherboard', '', },
	{'', 'hades_laptop:psu', '', },
	{'', 'hades_laptop:case', '', },
	}
})

laptop.register_hardware("hades_laptop:cube", {
	description = "CUBE PC",
	infotext = "CUBE PC",
	os_version = '5.02',
	sequence = { "off", "on"},
	hw_capabilities = { "hdd", "floppy", "net", "liveboot" },
	node_defs = {
		["on"] = {
			hw_state = "power_on",
			_power_off_seq = "off",
			_eu_demand = 150,
			light_source = 4,
			tiles = {
				"laptop_cube_monitor_top.png^laptop_cube_tower_top.png",
				"laptop_cube_monitor_bottom.png^laptop_cube_tower_bottom.png",
				"laptop_cube_monitor_right.png^laptop_cube_tower_right.png",
				"laptop_cube_monitor_left.png^laptop_cube_tower_left.png",
				"laptop_cube_monitor_back.png^laptop_cube_tower_back.png",
				"laptop_cube_monitor_front_on.png^laptop_cube_tower_front_on.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
					type = "fixed",
					fixed = {
					{-0.5, -0.5, -0.1875, 0.5, -0.1875, 0.5}, -- cube tower
					{-0.5, -0.5, -0.5, 0.1875, -0.4375, -0.25}, -- cube keyboard
					{0.25, -0.5, -0.5, 0.4375, -0.4375, -0.25}, -- cube mouse
					{-0.3125, -0.5, -0.125, 0.3125, 0.5, 0.4375}, -- cube monitor
				}
			},
		},
		["off"] = {
			hw_state = "power_off",
			tiles = {
				"laptop_cube_monitor_top.png^laptop_cube_tower_top.png",
				"laptop_cube_monitor_bottom.png^laptop_cube_tower_bottom.png",
				"laptop_cube_monitor_right.png^laptop_cube_tower_right.png",
				"laptop_cube_monitor_left.png^laptop_cube_tower_left.png",
				"laptop_cube_monitor_back.png^laptop_cube_tower_back.png",
				"laptop_cube_monitor_front.png^laptop_cube_tower_front.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
					type = "fixed",
					fixed = {
					{-0.5, -0.5, -0.1875, 0.5, -0.1875, 0.5}, -- cube tower
					{-0.5, -0.5, -0.5, 0.1875, -0.4375, -0.25}, -- cube keyboard
					{0.25, -0.5, -0.5, 0.4375, -0.4375, -0.25}, -- cube mouse
					{-0.3125, -0.5, -0.125, 0.3125, 0.5, 0.4375}, -- cube monitor
				}
			}
		}
	}
})

minetest.register_craft({
	output = 'hades_laptop:cube_off',
	recipe = {
	{'', 'hades_laptop:crt', '', },
	{'hades_laptop:HDD', 'hades_laptop:motherboard', 'hades_laptop:psu', },
	{'hades_laptop:cpu_65536', 'hades_laptop:case', '', },
	}
})

laptop.register_hardware("hades_laptop:fruit_zero", {
	description = "Fruit Zero",
	infotext = "Fruit Zero",
	sequence = { "off", "on"},
	custom_theme = "Magma",
	node_defs = {
		["on"] = {
			hw_state = "power_on",
			_power_off_seq = "off",
			_eu_demand = 300,
			light_source = 4,
			tiles = {
				"laptop_fruit_stand_top.png",
				"laptop_fruit_base.png",
				"laptop_fruit_base.png",
				"laptop_fruit_base.png",
				"laptop_fruit_lcd_back.png",
				"laptop_lcd_fruit_on.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.375}, -- NodeBox1
					{-0.0625, -0.4375, 0.125, 0.0625, 0.0625, 0.25}, -- NodeBox2
					{-0.5, -0.1875, 0, 0.5, 0.5, 0.125}, -- NodeBox3
					{-0.5, -0.5, -0.5, 0.1875, -0.4375, -0.25}, -- NodeBox4
					{0.25, -0.5, -0.5, 0.4375, -0.4375, -0.25}, -- NodeBox5
				}
			}
		},
		["off"] = {
			hw_state = "power_off",
			tiles = {
				"laptop_fruit_stand_top.png",
				"laptop_fruit_base.png",
				"laptop_fruit_base.png",
				"laptop_fruit_base.png",
				"laptop_fruit_lcd_back.png",
				"laptop_lcd_fruit.png"
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.5, -0.5, -0.125, 0.5, -0.4375, 0.375}, -- NodeBox1
					{-0.0625, -0.4375, 0.125, 0.0625, 0.0625, 0.25}, -- NodeBox2
					{-0.5, -0.1875, 0, 0.5, 0.5, 0.125}, -- NodeBox3
					{-0.5, -0.5, -0.5, 0.1875, -0.4375, -0.25}, -- NodeBox4
					{0.25, -0.5, -0.5, 0.4375, -0.4375, -0.25}, -- NodeBox5
				}
			}
		}
	}
})

minetest.register_craft({
	output = 'hades_laptop:fruit_zero_off',
	recipe = {
	{'dye:white', 'hades_laptop:lcd', 'dye:white', },
	{'hades_laptop:gpu', 'hades_laptop:motherboard', 'hades_laptop:HDD', },
	{'hades_laptop:cpu_jetcore', 'hades_laptop:case', 'hades_laptop:psu', },
	}
})

laptop.register_hardware("hades_laptop:bell_crossover", {
	description = "Bell CrossOver",
	infotext = "Bell CrossOver",
	os_version = "6.33",
	sequence = { "off", "on"},
	node_defs = {
		["on"] = {
			hw_state = "power_on",
			_power_off_seq = "off",
			_eu_demand = 250,
			light_source = 4,
			tiles = {
				"laptop_opti_pc_top.png^laptop_opti_kb_top.png^laptop_opti_ms_top.png^laptop_opti_lcb_top.png^laptop_opti_lcp_top.png^laptop_opti_lcd_top.png",
				"laptop_opti_pc_bottom.png^laptop_opti_kb_bottom.png^laptop_opti_ms_bottom.png^laptop_opti_lcd_bottom.png",
				"laptop_opti_pc_right.png^laptop_opti_kb_right.png^laptop_opti_ms_right.png^laptop_opti_lcb_right.png^laptop_opti_lcp_right.png^laptop_opti_lcd_right.png",
				"laptop_opti_pc_left.png^laptop_opti_kb_left.png^laptop_opti_ms_left.png^laptop_opti_lcb_left.png^laptop_opti_lcp_left.png^laptop_opti_lcd_left.png",
				"laptop_opti_pc_back.png^laptop_opti_kb_back.png^laptop_opti_ms_back.png^laptop_opti_lcb_back.png^laptop_opti_lcp_back.png^laptop_opti_lcd_back.png",
				"laptop_opti_pc_on_front.png^laptop_opti_kb_front.png^laptop_opti_ms_front.png^laptop_opti_lcb_front.png^laptop_opti_lcp_front.png^laptop_opti_lcd_on_front.png",
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.375, -0.5, -0.0625, 0.375, -0.3125, 0.4375}, -- tower
					{-0.4375, -0.5, -0.4375, 0.25, -0.4375, -0.1875}, -- keboard
					{0.3125, -0.5, -0.375, 0.4375, -0.4375, -0.1875}, -- mouse
					{-0.25, -0.3125, 0.0625, 0.25, -0.25, 0.3125}, -- lcd_base
					{-0.0625, -0.25, 0.1875, 0.0625, 0.0625, 0.25}, -- lcd_pedestal
					{-0.4375, -0.125, 0.125, 0.4375, 0.4375, 0.1875}, -- lcd_main
				}
			}
		},
		["off"] = {
			hw_state = "power_off",
			tiles = {
				"laptop_opti_pc_top.png^laptop_opti_kb_top.png^laptop_opti_ms_top.png^laptop_opti_lcb_top.png^laptop_opti_lcp_top.png^laptop_opti_lcd_top.png",
				"laptop_opti_pc_bottom.png^laptop_opti_kb_bottom.png^laptop_opti_ms_bottom.png^laptop_opti_lcd_bottom.png",
				"laptop_opti_pc_right.png^laptop_opti_kb_right.png^laptop_opti_ms_right.png^laptop_opti_lcb_right.png^laptop_opti_lcp_right.png^laptop_opti_lcd_right.png",
				"laptop_opti_pc_left.png^laptop_opti_kb_left.png^laptop_opti_ms_left.png^laptop_opti_lcb_left.png^laptop_opti_lcp_left.png^laptop_opti_lcd_left.png",
				"laptop_opti_pc_back.png^laptop_opti_kb_back.png^laptop_opti_ms_back.png^laptop_opti_lcb_back.png^laptop_opti_lcp_back.png^laptop_opti_lcd_back.png",
				"laptop_opti_pc_front.png^laptop_opti_kb_front.png^laptop_opti_ms_front.png^laptop_opti_lcb_front.png^laptop_opti_lcp_front.png^laptop_opti_lcd_front.png",
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.375, -0.5, -0.0625, 0.375, -0.3125, 0.4375}, -- tower
					{-0.4375, -0.5, -0.4375, 0.25, -0.4375, -0.1875}, -- keboard
					{0.3125, -0.5, -0.375, 0.4375, -0.4375, -0.1875}, -- mouse
					{-0.25, -0.3125, 0.0625, 0.25, -0.25, 0.3125}, -- lcd_base
					{-0.0625, -0.25, 0.1875, 0.0625, 0.0625, 0.25}, -- lcd_pedestal
					{-0.4375, -0.125, 0.125, 0.4375, 0.4375, 0.1875}, -- lcd_main
				}
			}
		}
	}
})

minetest.register_craft({
	output = 'hades_laptop:bell_crossover_off',
	recipe = {
	{'dye:dark_grey', 'hades_laptop:lcd', 'dye:dark_grey', },
	{'hades_laptop:psu', 'hades_laptop:motherboard', 'hades_laptop:HDD', },
	{'hades_laptop:cpu_d75a', 'hades_laptop:case', 'dye:dark_grey', },
	}
})

--Kodiak 1000--
laptop.register_hardware("hades_laptop:kodiak_1000", {
	description = "Kodiak 1000",
	infotext = "Kodiak 1000",
	sequence = { "off", "on"},
	os_version = "3.31",
	hw_capabilities = { "floppy", "liveboot" },
	node_defs = {
		["on"] = {
			hw_state = "power_on",
			_power_off_seq = "off",
			_eu_demand = 100,
			light_source = 3,
			tiles = {
				"laptop_k_top.png^laptop_t_top.png^laptop_p_top.png^laptop_m_top.png",
				"laptop_k_bottom.png^laptop_t_bottom.png^laptop_p_bottom.png^laptop_m_bottom.png",
				"laptop_k_right.png^laptop_t_right.png^laptop_p_right.png^laptop_m_right.png",
				"laptop_k_left.png^laptop_t_left.png^laptop_p_left.png^laptop_m_left.png",
				"laptop_k_back.png^laptop_t_back.png^laptop_p_back.png^laptop_m_back.png",
				"laptop_k_front.png^laptop_t_front_on.png^laptop_p_front.png^laptop_m_front_on.png",
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.3125, -0.5, -0.5, 0.3125, -0.4375, -0.25}, -- keyboard
					{-0.4375, -0.5, -0.1875, 0.4375, -0.3125, 0.4375}, -- tower
					{-0.25, -0.3125, -0.0625, 0.25, -0.25, 0.375}, -- pedestal
					{-0.375, -0.25, -0.125, 0.375, 0.25, 0.4375}, -- monitor
				}
			}
		},
		["off"] = {
			hw_state = "power_off",
			tiles = {
				"laptop_k_top.png^laptop_t_top.png^laptop_p_top.png^laptop_m_top.png",
				"laptop_k_bottom.png^laptop_t_bottom.png^laptop_p_bottom.png^laptop_m_bottom.png",
				"laptop_k_right.png^laptop_t_right.png^laptop_p_right.png^laptop_m_right.png",
				"laptop_k_left.png^laptop_t_left.png^laptop_p_left.png^laptop_m_left.png",
				"laptop_k_back.png^laptop_t_back.png^laptop_p_back.png^laptop_m_back.png",
				"laptop_k_front.png^laptop_t_front.png^laptop_p_front.png^laptop_m_front.png",
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.3125, -0.5, -0.5, 0.3125, -0.4375, -0.25}, -- keyboard
					{-0.4375, -0.5, -0.1875, 0.4375, -0.3125, 0.4375}, -- tower
					{-0.25, -0.3125, -0.0625, 0.25, -0.25, 0.375}, -- pedestal
					{-0.375, -0.25, -0.125, 0.375, 0.25, 0.4375}, -- monitor
				}
			}
		}
	}
})

minetest.register_craft({
	output = 'hades_laptop:kodiak_1000_off',
	recipe = {
	{'', 'hades_laptop:crt_green', '', },
	{'hades_laptop:cpu_c6', 'hades_laptop:motherboard', 'hades_laptop:psu', },
	{'hades_laptop:HDD', 'hades_laptop:case', '', },
	}
})

-- Portable Workstation
laptop.register_hardware("hades_laptop:portable_workstation_2", {
	description = "Portable Workstation 2",
	infotext = "Portable Workstation 2",
	os_version = "5.02",
	custom_theme = "Argyle",
	sequence = { "closed", "open", "open_on"},
	battery_capacity = 80000,
	inventory_image = "laptop_lap_base_item.png",
	node_defs = {
		["closed"] = {
			hw_state = "power_off",
			tiles = {
				"laptop_lap_base_closed_top.png",
				"laptop_lap_base_closed_bottom.png",
				"laptop_lap_base_closed_right.png",
				"laptop_lap_base_closed_left.png",
				"laptop_lap_base_closed_back.png",
				"laptop_lap_base_closed_front.png",
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.4375, -0.5, -0.4375, 0.4375, -0.375, 0.375}, -- base_closed
				}
			}
		},
		["open"] = {
			hw_state = "power_off",
			tiles = {
				"laptop_lap_base_open_top.png",
				"laptop_lap_base_open_bottom.png^laptop_lap_sc_open_bottom.png",
				"laptop_lap_base_open_right.png",
				"laptop_lap_base_open_left.png",
				"laptop_lap_base_open_back.png^laptop_lap_sc_open_back.png",
				"laptop_lap_base_open_front.png^laptop_lap_sc_open_front.png",
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.4375, -0.5, -0.4375, 0.4375, -0.4375, 0.375}, -- base_open
					{-0.4375, -0.4375, 0.375, 0.4375, 0.3125, 0.4375}, -- sc_open
				}
			}
		},
		["open_on"] = {
			hw_state = "resume",
			_power_off_seq = "open",
			_eu_demand = 200,
			_battery_charge = 400,
			light_source = 4,
			tiles = {
				"laptop_lap_base_open_on_top.png",
				"laptop_lap_base_open_bottom.png^laptop_lap_sc_open_bottom.png",
				"laptop_lap_base_open_right.png",
				"laptop_lap_base_open_left.png",
				"laptop_lap_base_open_back.png^laptop_lap_sc_open_back.png",
				"laptop_lap_base_open_front.png^laptop_lap_sc_open_on_front.png",
			},
			drawtype = "nodebox",
			paramtype = "light",
			paramtype2 = "facedir",
			node_box = {
				type = "fixed",
				fixed = {
					{-0.4375, -0.5, -0.4375, 0.4375, -0.4375, 0.375}, -- base_open
					{-0.4375, -0.4375, 0.375, 0.4375, 0.3125, 0.4375}, -- sc_open
				}
			}
		}
	}
})

minetest.register_craft({
	output = 'hades_laptop:portable_workstation_2_item',
	recipe = {
	{'dye:dark_grey', 'hades_laptop:lcd', 'dye:dark_grey', },
	{'hades_laptop:HDD', 'hades_laptop:motherboard', 'hades_laptop:cpu_d75a', },
	{'hades_laptop:bat', 'hades_laptop:case', 'dye:dark_grey', },
	}
})

-- Conversion from older laptop version, before 2018-03
minetest.register_alias("hades_laptop:monitor2_off", "hades_laptop:fruit_zero_off")
minetest.register_alias("hades_laptop:monitor2_on", "hades_laptop:fruit_zero_on")

minetest.register_alias("hades_laptop:monitor4_off", "hades_laptop:bell_crossover_off")
minetest.register_alias("hades_laptop:monitor4_on", "hades_laptop:bell_crossover_on")

minetest.register_alias("hades_laptop:monitor3_off", "hades_laptop:kodiak_1000_off")
minetest.register_alias("hades_laptop:monitor3_on", "hades_laptop:kodiak_1000_on")

minetest.register_alias("hades_laptop:laptop_closed", "hades_laptop:portable_workstation_2_closed")
minetest.register_alias("hades_laptop:laptop_open", "hades_laptop:portable_workstation_2_open")
minetest.register_alias("hades_laptop:laptop_open_on", "hades_laptop:portable_workstation_2_open_on")
