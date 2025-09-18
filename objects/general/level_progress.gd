extends Node

var path = "user://data.json"

var data : Dictionary = {
    "level" : 1
}
func _ready():
    _load()
    print(data.get("level"))

func _save():
    var f = FileAccess.open(path,FileAccess.WRITE)
    f.store_var(data.duplicate())
    f.close()

func _load():
    if FileAccess.file_exists(path):
        var f = FileAccess.open(path,FileAccess.READ)
        var d = f.get_var()
        f.close()

        var save_data = d.duplicate()
        data.level = save_data.level
