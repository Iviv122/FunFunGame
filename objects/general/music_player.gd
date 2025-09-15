extends Node
class_name MusicPlayer

@export var music : Array[AudioStreamMP3]
@export var player : AudioStreamPlayer2D

func getMus():
	add_to_group("music")
	await get_tree().create_timer(2).timeout
	var m : AudioStreamMP3 = music.pick_random()
	player.stream = m
	player.play()

func setVolume(_vol : float) -> void:
	player.volume_db = _vol
func getVolume() -> float:
	return player.volume_db

func _ready():
	player.finished.connect(getMus)
	getMus()
