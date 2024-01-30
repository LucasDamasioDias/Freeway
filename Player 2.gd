extends Area2D


export var speed = 100
var screen_size
signal pontua2
signal hit2

func _ready():
 screen_size = get_viewport_rect().size

func _process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed("desce"):
		velocity.y += 1
	if Input.is_action_pressed("sobe"):
		velocity.y -= 1	
	if Input.is_action_pressed("direita"):
		velocity.x += 1
	if Input.is_action_pressed("esq"):
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
	
func _on_Player_2_body_entered(body):
	if body.name == "ganha":
		emit_signal("pontua2")
	else:
		emit_signal("hit2")		
		$AudioStreamPlayer2D.play()
		position.x = 944
		position.y = 696	

func volta():
	position.x = 944
	position.y = 696



