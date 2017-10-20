x = obj_player.x+5;
y = obj_player.y-27;

image_angle = point_direction(x,y,mouse_x,mouse_y)

firingdelay = firingdelay - 1;
if (mouse_check_button(mb_left)) && (firingdelay < -20)
{
	firingdelay = 5;
	with (instance_create_layer(x,y,"KunaiThrown",obj_kunai_thrown))
	{
		speed = 15;
		direction = other.image_angle + random_range (-2,2);
		image_angle = direction;
	}
	{
		sprite_index = spr_throw_kunai;
	}
}