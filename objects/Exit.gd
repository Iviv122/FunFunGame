extends Area2D
class_name Exit

func _ready():
    body_entered.connect(win)

func win(_a):
    print("win")