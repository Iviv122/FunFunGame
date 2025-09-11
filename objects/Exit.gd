extends Area2D
class_name Exit

@export var WinEffect : PackedScene

func _ready():
	body_entered.connect(win)

func win(_a):
	print("win")
	var effect : GPUParticles2D= WinEffect.instantiate()
	effect.restart() 
	add_child(effect)
