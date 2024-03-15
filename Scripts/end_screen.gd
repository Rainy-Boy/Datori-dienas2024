extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false
	self.modulate.a = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !Game.playerAlive and !self.visible:
		self.visible = true
		var tween = get_tree().create_tween().set_pause_mode(Tween.TWEEN_PAUSE_PROCESS)
		tween.tween_property(self, "modulate:a", 255, 3).set_trans(Tween.TRANS_CIRC)

func _on_button_pressed():
	get_tree().quit()

func _on_button_play_again_pressed():
	Game.playerScore = 0
	Game.playerAlive = true
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")
