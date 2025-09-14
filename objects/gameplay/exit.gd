extends Area2D
class_name Exit

@export var WinEffect : PackedScene

func _ready():
	body_entered.connect(win)

func win(_a):
	if _a is Ball:
		var tween = get_tree().create_tween()

		_a.freeze = true
		tween.tween_property(_a, "position", global_position, 0.2)
		await get_tree().create_timer(0.2).timeout
		
		var effect : GPUParticles2D= WinEffect.instantiate()
		effect.restart() 
		add_child(effect)

		_a.queue_free()
