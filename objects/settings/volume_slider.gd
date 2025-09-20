extends HSlider
class_name VolumeSlider 

func _ready() -> void:
	min_value = -15
	max_value = 15

	value = GetMusicNode().getVolume()

func GetMusicNode() -> MusicPlayer:
	for i in get_tree().root.get_children():
		if i is Node2D:
			for j in i.get_children():
				if j is MusicPlayer:
					return j
	return null

func _value_changed(new_value: float) -> void:
	get_tree().call_group("music","setVolume",new_value)
