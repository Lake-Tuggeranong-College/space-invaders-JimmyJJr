extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Start_Game_Button_button_up():
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://MainGame/MainGame.tscn")


func _on_Quit_button_up():
	get_tree().quit()
	


func _on_Options_button_up():
	get_tree().change_scene("res://Options/Options.tscn")
	print ("oughh... b")
