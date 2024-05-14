extends TileMap

func _ready():
	set_process_input(true)

func _input(event):
	if Input.is_action_pressed(&"Interact"):
		pass
