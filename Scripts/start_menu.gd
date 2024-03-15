extends Area2D

func _input(event):
	#print(event.as_text())
	if event is InputEventMouseButton:
		print("Klikšķis")
		get_tree().paused = false

		self.visible = false
		self.process_mode = Node.PROCESS_MODE_DISABLED
	
