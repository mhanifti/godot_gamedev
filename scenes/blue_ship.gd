extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_meta("power", 400)
	
	print("Ship initialized")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("move_up"):
		var pwr = get_meta("power")
		pwr = min(pwr * (1+delta), 600)
		set_meta("power", pwr)
		apply_central_force(Vector2(0, -pwr))
	else:
		var pwr = get_meta("power")
		pwr = max(pwr * (1-delta), 400)
		set_meta("power", pwr * (1-delta))
	
	if Input.is_action_pressed("move_right"):
		apply_central_force(Vector2(100,0))
	
	if Input.is_action_pressed("move_left"):
		apply_central_force(Vector2(-100,0))
