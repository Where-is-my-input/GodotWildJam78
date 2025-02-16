extends Node

var direction:Vector2
var jump:bool
var dash:int = 0

var jumpBuffer:int = 0
@export var defaultJumpBuffer:int = 5
var dashBuffer:int = 0
@export var defaultDashBuffer:int = 5

func _physics_process(delta: float) -> void:
	#jump = Input.is_action_just_pressed("jump")
	#dash = Input.get_action_strength("dash")
	
	if Input.is_action_just_pressed("jump"):
		jump = true
		jumpBuffer = defaultJumpBuffer
	elif jumpBuffer > 0:
		jump = true
		jumpBuffer -= 1
	else:
		jump = false
	
	direction = Vector2(Input.get_axis("ui_left", "ui_right"), Input.get_axis("ui_up", "ui_down"))

func pressInput(input, inputBuffer, buffer):
	input = true
	inputBuffer = buffer
