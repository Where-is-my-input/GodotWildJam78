extends Node

var nextFrame = false

func _process(_delta):
	if get_tree().paused == false and nextFrame == true:
		get_tree().paused = true

	if Input.is_action_just_pressed("pause"):
		if get_tree().paused == false:
			get_tree().paused = true
		elif get_tree().paused == true:
			nextFrame = false
			get_tree().paused = false
	
	if Input.is_action_just_pressed("frameAdvance"):
		if get_tree().paused == false:
			get_tree().paused = true
		nextFrame = true
		get_tree().paused = false

#func _input(event: InputEvent) -> void:
	#if event.is_action_pressed("godMode"):
		#Global.godMode = !Global.godMode
