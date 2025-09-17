extends HSlider
class_name SFXVolumeSlider 

func _ready() -> void:
	min_value = -15
	max_value = 15

	value = GetMusicNode().getVolume()

func GetMusicNode() -> EffectPlayer:
	for i in get_tree().root.get_child(0).get_children():
		if i is EffectPlayer:
			return i
	return null

func _value_changed(new_value: float) -> void:
	get_tree().call_group("sfx","setVolume",new_value)