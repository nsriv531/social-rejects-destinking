extends Node2D

var crayon = preload("res://scenes/crayon.tscn")
var rng = RandomNumberGenerator.new()


@onready var timer = $Timer
@onready var marker = $Marker2D_1
@onready var cacti = preload("res://scenes/enemy.tscn")

func _ready():
	$Timer.start()

func _on_timer_timeout():
	rng.randomize()
	var number = rng.randi_range(1,10)
	if number == 1:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_1.position
		$enemy.add_child(cactus)
	elif number == 2:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_2.position
		$enemy.add_child(cactus)
	elif number == 3:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_3.position
		$enemy.add_child(cactus)
	elif number == 4:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_4.position
		$enemy.add_child(cactus)
	elif number == 5:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_5.position
		$enemy.add_child(cactus)
	elif number == 6:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_6.position
		$enemy.add_child(cactus)
	elif number == 7:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_7.position
		$enemy.add_child(cactus)
	elif number == 8:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_8.position
		$enemy.add_child(cactus)
	elif number == 9:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_9.position
		$enemy.add_child(cactus)
	elif number == 10:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_10.position
		$enemy.add_child(cactus)
	return "done"	

var counter = 0

func _e(location):
	var c = crayon.instantiate()
	c.global_position = location
	add_child(c)

func _on_player_spawn_crayon(location):
	var c = crayon.instantiate()
	c.global_position = location
	add_child(c)

func _on_wall_right_body_entered(body):
	if body.is_in_group("Player"):
		global_position = Vector2(40, 861)
		

func level_switch(level):
	if level == 10:
		get_tree().change_scene_to_file("res://scenes/L2.tscn")
	if level == 15:
		get_tree().change_scene_to_file("res://scenes/L3.tscn")
	if level == 1:
		get_tree().change_scene_to_file("res://scenes/L4.tscn")

