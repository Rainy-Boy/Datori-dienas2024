extends Area2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.x -= 150 * delta
	
	if self.position.x < -10:
		if Game.playerAlive:
			Game.playerScore += 1
		
		self.queue_free()

func _on_body_entered(body):
	if body.name == "Player":
		print("You lost!")
		body.queue_free()
		Game.playerAlive = false
