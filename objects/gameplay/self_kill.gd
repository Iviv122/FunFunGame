extends GPUParticles2D 
class_name SelfKill 

func _ready() -> void:
	var timer = get_tree().create_timer(lifetime)
	await timer.timeout
	queue_free()
