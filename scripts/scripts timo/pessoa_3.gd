extends Area2D

var clicando = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if clicando == true:
		position = get_global_mouse_position()


func _on_touch_screen_button_pressed() -> void:
	clicando = true
	

func _on_touch_screen_button_released() -> void:
	clicando = false


func _on_area_entered(area: Area2D) -> void:
	queue_free()
