extends Node2D

#var obstaclesArray: Array[String] = [
	#"res://Scenes/Bush.tscn"
#]

var obstaclesDict = {
	1 : [
		#"res://Scenes/Sejiens.tscn",
		#"res://Scenes/kina.tscn",
		#"res://Scenes/road_block.tscn", 
		#"res://Scenes/person.tscn",
		#"res://Scenes/df_flag.tscn",
		"res://Scenes/smotrovs.tscn",
		"res://Scenes/straujums.tscn"
	],
	2 : ["res://Scenes/Bush.tscn"],
	3 : [],
	4 : []
}
var semestris = 1
var index = 0
var rng = RandomNumberGenerator.new()

func _on_timer_timeout():
	if obstaclesDict.has(semestris):
		if index < obstaclesDict[semestris].size():
			var obstacleData = load(obstaclesDict[semestris][index])
			var obstacleInstance = obstacleData.instantiate()
			obstacleInstance.position = Vector2(181, 194)
			
			add_child(obstacleInstance)
			
			$Timer.wait_time = rng.randi_range(1, 4)
			#index += rng.randi_range(1, 2)
			index += 1
		else:
			print_debug("Beidzās ", semestris, ". semestris")
			semestris += 1
			index = 0
	else:
		print_debug("Beidzās asseti")
