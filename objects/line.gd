extends Line2D
class_name MLine

@export var line : LineEdit
@export var s: StaticBody2D

var l: float = -1000
var h: float = 1000
var step: float = 2
var objs : Array[CollisionShape2D]
var shapes : Array[SegmentShape2D]

func _ready() -> void:
	var i = l

	var p: PackedVector2Array
	while i <= h:
		p.append(Vector2(i, 0))
		i += step
	points = p

	line.text = "x*x";
	line.text_changed.connect(f)

	for j in points.size()-1:
		objs.append(CollisionShape2D.new())
		s.add_child(objs[j])

		shapes.append(SegmentShape2D.new())


	f("x*x")




func redraw() -> void:


	for i in points.size() - 1:
		shapes[i].a = points[i]
		shapes[i].b = points[i + 1]
		objs[i].shape = shapes[i] 


func f(_arg: String) -> void:
	
	var ex = Expression.new()

	var lambda = func(x):

		if _arg.is_empty():
			return 0

		var eq = _arg.replace("x",str(x))

		ex.parse(eq)

		var res = ex.execute()
		if res:
			return res
		else:
			return 0

	var i = l
	var p: PackedVector2Array
	while i <= h:
		var point = Vector2(i, lambda.call(i))
		p.append(point)
		i += step
		
	points = p
	redraw()
