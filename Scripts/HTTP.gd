extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():

	$HTTPRequest.connect("request_completed", self, "_on_request_completed")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	$HTTPRequest.get("https://raw.githubusercontent.com/godotengine/godot-demo-projects/master/2d/pong/paddle.png")
	pass # Replace with function body.
	


func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	
	print("Success!")
	
	pass # Replace with function body.
