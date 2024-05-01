extends Area2D

@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	game_manager.add_point()
	
	#queue_free() # fshin komplet nodin qe ka scriptin ne rastin tone. ne pergj queue_free heq nje node qe ne zgjedhim
	animation_player.play("pickup")
