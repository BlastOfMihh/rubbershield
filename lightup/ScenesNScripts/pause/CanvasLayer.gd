extends Control

func _ready():
#	rect_position=get_viewport().size/2*(-1)
	visible=true
	set_visible(false)


func _input(event):
	if event.is_action_pressed("pause"):
		set_visible(!get_tree().paused)
		get_tree().paused = !get_tree().paused
		pass
func _on_Button_pressed():
	get_tree().paused=false
	set_visible(false)
	
func set_visible(is_visible):
	for node in get_children():
		node.visible = is_visible
