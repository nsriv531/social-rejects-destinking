extends Node2D

var crayon = preload("res://scenes/crayon.tscn")


@onready var timer = $Timer
@onready var marker = $Marker2D
@onready var cacti = preload("res://scenes/enemy.tscn")

func _ready():
	$Timer.start()

func _on_timer_timeout():
	var cactus = cacti.instantiate()
	cactus.position = marker.position
	$enemy.add_child(cactus)
	pass
	
var counter = 0

func _on_player_spawn_crayon(location):
	var c = crayon.instantiate()
	c.global_position = location
	add_child(c)

func _on_wall_right_body_entered(body):
	if body.is_in_group("Player"):
		global_position = Vector2(40, 861)
		
func enemies_destroyed(enemy_counter):
	counter = enemy_counter 
	while counter > 0 :
		if enemy_destroyed:
			counter = counter - 1
	get_tree().change_scene_to_file("res://scenes/L2.tscn")
	
func level_switch(level):
	if level == 10:
		get_tree().change_scene_to_file("res://scenes/L2.tscn")
	if level == 15:
		get_tree().change_scene_to_file("res://scenes/L3.tscn")
	if level == 1:
		get_tree().change_scene_to_file("res://scenes/L4.tscn")
<<<<<<< HEAD




func _on_timer_timeout():
	var cactus = cacti.instantiate()
	cactus.position = marker.position
	$enemy.add_child(cactus)
=======
	
 

>>>>>>> e7e79f18318b67a9ca33874840913dfcaf98981b
