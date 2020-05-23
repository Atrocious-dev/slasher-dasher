//Menu 

//pause variable (showing menu or not)

/*
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);


// Keys for Menu (should relate to player controls 
global.revert_key = ord("X");
global.space_key = vk_enter;
global.left_key = vk_left;
global.right_key = vk_right;
global.up_key = vk_up;
global.down_key  = vk_down;


display_set_gui_size(global.view_width, global.view_height);
//define variables (main = 1 settings = 2 etc)
enum menu_page {
	main,
	settings,
	controls,
	audio,
	graphics,
	difficulty,
	height,
}

enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input 
}

//CREATE MENU PAGES (Name, Type, name of script to run)

//Main Page 
ds_menu_main = create_menu_page(
	["RESUME",		menu_element_type.script_runner,    resume_game],
	["NEW GAME",	menu_element_type.script_runner,	new_game],
	["SETTINGS",	menu_element_type.script_runner,	menu_page.settings],
	["QUIT GAME",	menu_element_type.script_runner,	exit_game]
	
);
//Settings 
ds_menu_settings = create_menu_page(
	["CONTROLS",		menu_element_type.script_runner,	menu_page.controls],
	["AUDIO",		menu_element_type.script_runner,	menu_page.audio],
	["GRAPHICS",		menu_element_type.script_runner,	menu_page.graphics],
	["DIFFICULTY",	menu_element_type.script_runner,	menu_page.difficulty],
	["BACK",			menu_element_type.script_runner,	menu_page.main]
);
//Controls 
ds_menu_controls = create_menu_page(


);
	
//Audio
ds_menu_audio = create_menu_page(
	["MASTER",		menu_element_type.slider,			change_volume,		1,		[0,	1]],
	["SOUNDS",		menu_element_type.slider,			change_volume,		1,		[0,	1]],
	["MUSIC",		menu_element_type.slider,			change_volume,		1,		[0,	1]],
	["BACK",		menu_element_type.page_transfer,	menu_page.settings],

);
//Graphics 
ds_menu_graphics = create_menu_page(
	["RESOLUTION",	menu_element_type.input,			change_resolution,	0,	["384 X 216", "768 X 432"]],
	["WINDOW MODE",  menu_element_type.input,			change_window_mode,	1,	["FULLSCREEN", "WINDOWED"]],
	["BACK",		menu_element_type.page_transfer,	menu_page.settings],
);
//Difficulty 
ds_menu_difficulty = create_menu_page(
	["DIFFICULTY",   menu_element_type.shift,			change_difficulty,   0,  ["BABY MODE", "NORMAL", "EXPERT"]],
	["BACK",	menu_element_type.page_transfer,	menu_page.settings],
);

page = 0;

ds_menu_pages = [ds_menu_main, ds_menu_settings,ds_menu_controls, ds_menu_difficulty, ds_menu_graphics, ds_menu_audio] 

*/