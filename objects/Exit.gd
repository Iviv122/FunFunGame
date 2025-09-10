extends Area2D
class_name Exit

@export var WinEffect : PackedScene

func _ready():
	body_entered.connect(win)

func win(_a):
	print("win")
	add_child(WinEffect.instantiate())
