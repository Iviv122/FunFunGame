extends Node 
class_name MenuManager

@export var fade: Fadeout

func _ready() -> void:
	fade.fadeout()

func loadMenu(scene: String) -> void:
	
	fade.fadein()

	await  get_tree().create_timer(0.2).timeout

	for i in get_children():
		if i == fade:
			continue	
		remove_child(i)
		i.queue_free()
	
	var s : PackedScene = load(scene)
	add_child(s.instantiate())
	fade.fadeout()
	get_tree().call_group("restart_group","restart")
