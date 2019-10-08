/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 16B610B5
/// @DnDArgument : "code" "/// @description Insert description here$(13_10)// You can write your code in this editor$(13_10)"
/// @description Insert description here
// You can write your code in this editor

/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 388F96EB
/// @DnDArgument : "x1" "1920"
/// @DnDArgument : "x2" "2048"
/// @DnDArgument : "y2" "768"
/// @DnDArgument : "obj" "pingu"
/// @DnDSaveInfo : "obj" "ddb47b0f-a1d9-4207-a2ac-6fe6e61bc28a"
var l388F96EB_0 = collision_line(1920, 0, 2048, 768, pingu, true, 1);
if((l388F96EB_0))
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 24578BC6
	/// @DnDParent : 388F96EB
	room_goto_next();
}