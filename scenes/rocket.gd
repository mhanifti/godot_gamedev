extends RigidBody2D

@onready var fire = get_node("fire")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_meta("power", 400)
	print("Ship initialized")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("move_up"):
		fire.visible = true
		var pwr = get_meta("power")
		var dir = rotation
		pwr = min(pwr * (1+delta), 600)
		set_meta("power", pwr)
		apply_central_force(Vector2(dir*10, -pwr))
	else:
		fire.visible = false
		var pwr = get_meta("power")
		pwr = max(pwr * (1-delta), 400)
		set_meta("power", pwr * (1-delta))
	
	if Input.is_action_pressed("move_right"):
		apply_central_force(Vector2(100,0))
		apply_torque_impulse(20)
	
	if Input.is_action_pressed("move_left"):
		apply_central_force(Vector2(-100,0))
		apply_torque_impulse(-20)
		
