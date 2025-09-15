extends HSlider
class_name VolumeSlider 

func _ready() -> void:
	value = GetMusicNode().getVolume()
	min_value = -15
	max_value = 15

func GetMusicNode() -> MusicPlayer:
	for i in get_tree().root.get_child(0).get_children():
		if i is MusicPlayer:
			return i
	return null
func _value_changed(new_value: float) -> void:
	get_tree().call_group("music","setVolume",new_value)
	print(new_value)
