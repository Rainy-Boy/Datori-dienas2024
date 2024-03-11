extends Node2D

var Bush = preload("res://Scenes/Bush.tscn")

func _on_timer_timeout():
	var tempBush = Bush.instantiate()
	tempBush.position = Vector2(181, 194)
	
	add_child(tempBush)

	var rng = RandomNumberGenerator.new()
	var randint = rng.randi_range(1, 4)
	
	$Timer.wait_time = randint
