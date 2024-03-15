extends Node2D



func _on_button_pressed():
	Game.playerScore = 0
	Game.playerAlive = true
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")


func _on_button_2_pressed():
	get_tree().quit()
