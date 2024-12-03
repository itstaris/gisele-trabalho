extends Area2D
var clicando = false

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	if clicando == true:
		position = get_global_mouse_position()
		
func _on_touch_screen_button_pressed() -> void:
	clicando = true


func _on_touch_screen_button_released() -> void:
	clicando = false


func _on_area_entered(area: Area2D) -> void:
	queue_free()
