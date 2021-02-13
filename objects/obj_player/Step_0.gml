var move = false;

if(keyboard_check(vk_right) && place_free(x+walkSpd, y)){
	x+=walkSpd;
	image_xscale = 1;
	move = true;
}
if(keyboard_check(vk_left) && place_free(x-walkSpd, y)){
	x-=walkSpd;
	image_xscale = -1;
	move = true;
}

//Jump system
if(keyboard_check_pressed(ord("Z")) or keyboard_check(vk_up)) {
	jump = true;
}

vspd += g;
if(!(place_free(x, y+1)) && jump) {
	jump = false;
	vspd = jumpHeight;
}

if(!(place_free(x, y+vspd))) {
	var signVsp = 0;
	
	if(vspd >= 0) {
		signVsp = 1;
	} else {
		signVsp = -1;
	}
	
	while(place_free(x, y+signVsp)) {
		y+=signVsp;
	}
	vspd = 0;
	
}

y += vspd;
//End Jump System
//----
//Shooting system

if(keyboard_check_pressed(ord("X"))) {
	
	if(ammo > 0) {
		var obj = instance_create_depth(x+(22 * image_xscale),y,1, obj_bullet);
		obj.hspeed = 10 * image_xscale;
		ammo--;
	}
}

if(move) {
	sprite_index = spr_engineer1_run;
} else {
	sprite_index = spr_engineer1_idle;
}