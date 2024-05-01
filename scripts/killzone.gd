extends Area2D

@onready var timer = $Timer

#kinda a collision function
func _on_body_entered(body): # body eshte zakonisht playeri yne, ose nje trup qe e prek nodin qe ka Killzonen
	print("you died")
	Engine.time_scale =0.3  # ngadaleson ter lojen , jep efekt slow motion
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	


func _on_timer_timeout():
	Engine.time_scale = 1.0 # rivendos shpejtesine normale kur te behet loja restart
	get_tree().reload_current_scene()
