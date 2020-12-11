extends Control

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var rng = RandomNumberGenerator.new()
var num = 0
var num2 = 0
var ans = 0
var counter = 0

func _new_number():
	rng.randomize()
	
	num = rng.randi_range(1,9)
	num2 = rng.randi_range(1,9)
	
	ans = num + num2
	
	$TextEdit.text = String(num) + "+" + String(num2)

# Called when the node enters the scene tree for the first time.
func _ready():
	
	_new_number()	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_LineEdit_text_entered(new_text):
	if int(new_text) == ans:
		counter+=1
	$LineEdit.text = ""
	$Label.text = String(counter)
	_new_number()
	



func _on_Button_pressed():
	_on_LineEdit_text_entered($LineEdit.text)
	pass # Replace with function body.
