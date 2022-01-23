//Universal inputs for a single-player game

global.currentGP = -1;		//Gamepad currently in use
global.usingKB = true;		//If user is currently using the keyboard (Mostly to be used by in-game prompts)

//Use an an system async. event in a game controller
//Updates the currently connected controller
function updateController() {
	global.currentGP = -1; //Indicates keyboard only
	
	for (var i=0; i<gamepad_get_device_count(); i++) {
		if gamepad_is_connected(i) {
			global.currentGP = i;
		}
	}
	
	global.usingKB = (global.currentGP == -1);
}

//Where the meat of inputs come in
/*
	pressed		-	only accept inputs on the first frame of pressing
			NOTE: if set to true, it creates a variable "tapped" to achieve this with analog sticks
	kb			-	keyboard key
	gp			-	gamepad button
	[gp_axis]	-	analog stick axis
	[neg_axis]	-	use the negative axis value (up on vertical or right on horizontal)
*/
function multiInput(pressed,kb,gp,gp_axis=noone,neg_axis=false) {
	var n = neg_axis ? -1 : 1;
	
	if !pressed {
		var b = (keyboard_check(kb) || gamepad_button_check(global.currentGP,gp));
		if (gp_axis != noone) {
			b = (b || (gamepad_axis_value(global.currentGP,gp_axis)*n > 0.5));
		}
	} else {
		var b = (keyboard_check_pressed(kb) || gamepad_button_check_pressed(global.currentGP,gp));
		if (gp_axis != noone) {
			if !variable_instance_exists(id,"tapped") {tapped = noone};
			
			var g = false;
			if (tapped == gp_axis) {
				if (abs(gamepad_axis_value(global.currentGP,gp_axis)) < 0.1) {tapped = noone}
			} else if (tapped == noone) {
				g = (gamepad_axis_value(global.currentGP,gp_axis)*n > 0.5);
				if g {tapped = gp_axis}
			}
			b = (b || g);
		}
	}
	
	return b;
}