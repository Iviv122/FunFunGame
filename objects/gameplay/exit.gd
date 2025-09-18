extends Area2D
class_name Exit

@export var WinEffect : PackedScene
@export var NextLevel : String 
@export var NextLevelNumber : int

func _ready():
	body_entered.connect(win)

func win(_a):

	if _a is Ball && _a != null:
		var tween = get_tree().create_tween()
		
		_a.freeze = true
		_a.canRemove = false

		tween.tween_property(_a, "position", global_position, 0.2)
		await get_tree().create_timer(0.2).timeout

		var effect : GPUParticles2D= WinEffect.instantiate()
		effect.restart() 
		add_child(effect)

		_a.queue_free()
		get_tree().call_group("end_group","end")
		get_tree().call_group("scene_manager","loadMenu",NextLevel)

		LevelProgress.data["level"] = NextLevelNumber
		LevelProgress._save()

		await get_tree().create_timer(0.1).timeout
		
