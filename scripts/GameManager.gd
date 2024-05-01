extends Node

@onready var score_label = $"../CanvasLayer/ScoreLabel"
"res://assets/music/time_for_adventure.mp3"
var score = 0

func add_point():
	score+=1
	score_label.text = "You Collected " + str(score) + " coins"
	print("Score updated: " + score_label.text)  # Debugging output
