extends Node
class_name EffectPlayer

@export var clickSound: AudioStreamPlayer2D
@export var hoverSound: AudioStreamPlayer2D

func _ready():
    add_to_group("sfx")

func setVolume(_vol: float) -> void:
    clickSound.volume_db = _vol
    hoverSound.volume_db = _vol
    
func getVolume() ->float:
    return clickSound.volume_db

func hover():    
    hoverSound.play()
func click():
    clickSound.play()

