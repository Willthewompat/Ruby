//Get player input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_up) || keyboard_check(ord("W"))

//Calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_wall)) && (key_jump)
{
	vsp = -10;
}

//Horizontal collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while(!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while(!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_player_air;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}

else

if (place_meeting(x,y+1,obj_wall))

{
	image_speed = 1;
	if (hsp == 0)
		{
			sprite_index = spr_player;
		}
		else
		{
			sprite_index = spr_player_running;
		}
}

if (hsp != 0) image_xscale = sign(hsp);