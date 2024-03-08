extends Control

export(int) var countdownMax
var currentTimer

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	currentTimer = countdownMax
	$HUD/Countdown.text = str(currentTimer)
	
	while currentTimer > 0:
		yield(get_tree().create_timer(1.0), "timeout")
		$HUD/Countdown.text = str(currentTimer)
		currentTimer = currentTimer - 1
		print(currentTimer)
	print("womp womp")
	get_tree().change_scene("res://LoseScene/LoseScene.tscn")

func _process(delta):
	$HUD/CurrentScore.text = str(GlobalVariables.scoringInformation["currentScore"])
	if "128" in str(GlobalVariables.scoringInformation["currentScore"]) :
		print("Level 1 Complete")
		get_tree().change_scene("res://WinScene/WinScene.tscn")
