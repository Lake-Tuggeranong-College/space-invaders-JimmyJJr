extends KinematicBody2D

var movement_speed = 200
var bulletSource = preload ("res://Bullet/Bullet.tscn")
# var a = 2
# var b = "text"




# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_physics_process (true)
func _process(delta):
	if Input.is_action_just_pressed("fire"):
		if GlobalVariables.bulletInstanceCount < 3:
			var bulletInstance = bulletSource.instance()
			bulletInstance.position = Vector2(position.x, position.y-20)
			get_tree().get_root().add_child(bulletInstance)
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		if position.x > 50:
			move_and_collide(Vector2(-movement_speed * delta, 0))
	if Input.is_action_pressed("ui_right"):
		if position.x < 1230:
			move_and_collide(Vector2(movement_speed * delta, 0))
	if Input.is_action_pressed("ui_up"):
		get_tree().reload_current_scene()
		if "4" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "8" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "12" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "16" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "20" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "24" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "28" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "32" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "36" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "40" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "44" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "48" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "52" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "56" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "60" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "64" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "68" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "72" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "76" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "80" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "84" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "88" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "92" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "96" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "100" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "104" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "108" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "112" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "116" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "120" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "124" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
		if "128" in str(GlobalVariables.scoringInformation["currentScore"]) :
			GlobalVariables.scoringInformation["currentScore"] =0
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://Menu/Menu.tscn")
