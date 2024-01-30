extends Area2D


export var speed = 100
var screen_size
signal pontua
signal hit

func _ready():
 screen_size = get_viewport_rect().size

func _process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()	
	position += velocity * delta	
	
	position.y = clamp(position.y,0, screen_size.y) 
	
	if velocity.y > 0:
		$AnimatedSprite.animation = "baixo"
	elif velocity.y < 0:
		$AnimatedSprite.animation ="cima"	
	
	if velocity.x > 0:
		$AnimatedSprite.animation = "direita"
	elif velocity.x < 0:
		$AnimatedSprite.animation ="esquerda"	


func _on_Player_1_body_entered(body):
	if body.name == "ganha":
		emit_signal("pontua")
	else:
	 emit_signal("hit")
	 $AudioStreamPlayer2D.play()
	 position.x = 320
	 position.y = 696
	

func volta():
	position.x = 320
	position.y = 696
	

	




