@tool
extends Node3D

@export var moving: bool
@export var run_reset: float = 0.0:
	set(val):
		print("set to", val)
		run_reset = val
		if val >= 5:
			do_run_reset()
	
func do_run_reset():
	rotation = Vector3(0,0,0)

func _ready():
	pass # Replace with function body.

func _process(delta):
	if moving and Engine.is_editor_hint():
		rotate_object_local(Vector3(0,0,1), PI * delta)
	elif moving and not Engine.is_editor_hint():
		rotate_object_local(Vector3(0,0,1), -PI * delta)

func _on_check_button_pressed():
	moving = not moving

func _on_button_pressed():
	#do_run_reset()
	pass
