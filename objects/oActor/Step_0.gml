/// @description <description>

keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyUp = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);

//determine the direction to move the player
moveDirection = keyRight - keyLeft;

#region Animation Stuff

if sign(moveDirection) != 0
{
	image_xscale = sign(moveDirection) * 1;
}

if phy_speed_x != 0 and moveDirection != 0
{
	sprite_index = sActorRunning;
}
else 
{
	image_speed = 0.5;
	sprite_index = sActor;
}

if state == states.flying
{
	sprite_index = sActorBall;
}
if state == states.aiming
{
	sprite_index = sActorBall;
}

#endregion

#region Check if previously collided and enable or disable sound accordingly

if collision_circle(x, y, 55, oSolid, true, true)
{
	if canSound
	{
		audio_play_sound(sndBounce, 1, false);
		canSound = false;
	}
}
else canSound = true;

#endregion

if (state == states.walking){
#region Walking

//fix rotation
phy_fixed_rotation = true;
phy_rotation = 0;

#region Get Player Inputs

// Check to see if player is trying to aim
if (mouse_check_button(mb_left)) && (point_in_circle(mouse_x, mouse_y, x, y, 50))
{
		state = states.aiming;
		arrow = instance_create_layer(x, y + 20, "Level_Collisions", oArrow);
}

#endregion
#region Movement and Collision


//determine how fast the player will move and apply direction

if (keyRight or keyLeft)
{
	phy_speed_x = sign(moveDirection) * 10;
}

if (collision_circle(x, y, 10, oExit, false, true)) && (keyUp)
{
		if (oExit.image_index == 5) && (leave)
		{
			leave = false;
			instance_create_layer(x, y, "Level_Collisions", oFadeRoom);
		}
}

#endregion
#endregion
}

else if (state == states.aiming){
#region Aiming

//fix rotation
phy_fixed_rotation = true;
phy_rotation = 0;

// Stop Player from rolling
phy_speed_x = 0;

// Get the Horozontal Power
hPower = round(x - mouse_x) * 2;
// Get the Vertical Power
vPower = round(y - mouse_y) * 2;

// Take away control
canWalk = 0;

// Change to Flying state once mouse button is released
if (!mouse_check_button(mb_left))
{
	audio_play_sound(sndLaunch, 1, 0);
	with (arrow) instance_destroy();
	jumping = true;
	state = states.flying;
}

#endregion
}

else if (state == states.flying){
#region Flying

//fix rotation
phy_fixed_rotation = false;

#region Movement and Collision

if (jumpCooldown < 15)
{
	physics_apply_impulse(x, y, hPower, vPower);
	jumpCooldown ++;
}
else
{
	hPower = 0;
	vPower = 0;
}

var hsp = phy_speed_x;
var vsp = phy_speed_y;

if (abs(hsp) + abs(vsp) < 5)
{
	canWalk ++;
}else{canWalk = 0}

if canWalk = 20 
{
	state = states.walking;
	jumpCooldown = 0;
}

#endregion

#endregion
}