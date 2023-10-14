extends TextEdit

@export var speed = 5
@export var fade = false

var time = 0
var sinTime = 0
var _visible = true

func text_flash():
	if !fade:
		if sinTime > 0:
			_visible = true
		else:
			_visible = false
	else:
		_visible = true
		modulate.a = sinTime
	visible = _visible	
func _physics_process(delta):
	time += delta
	sinTime = sin(time * speed)
	text_flash()
			
