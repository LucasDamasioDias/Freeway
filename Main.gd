extends Node

const novocarro = preload("res://carros.tscn")

var pdevagar = [600, 544, 438, 324, 384, 216, 160]
var prapido = [488, 272, 104]

var score1 = 0
var score2 = 0

var cron = 300

var live1 = 10
var live2 = 10


func _ready():
 $Button.hide()	
 $tema.play()
 randomize()

 


func _on_horacarrorapido_timeout():
	var carrorapido = novocarro.instance()
	add_child(carrorapido)
	carrorapido.position.x = -10
	carrorapido.position.y = prapido[randi() % prapido.size()]
	carrorapido.linear_velocity = Vector2(rand_range(700,725),0)

func _on_horacarrolento_timeout():
	var carrolento = novocarro.instance()
	add_child(carrolento)
	carrolento.position.x = -10
	carrolento.position.y = pdevagar[randi() % pdevagar.size()]
	carrolento.linear_velocity = Vector2(rand_range(300,325),0)


func _on_Player_1_pontua():
	if score1 < 10:
		score1 += 1
		$ponto.play()
		$placar1.text = str(score1)


	if score1 >= 10:
		$Button.show()
		$tema.stop()
		$resultado.text = "P1 Ganhou!"
		$ganhou.play()
		$horacarrolento.stop()
		$horacarrorapido.stop()
		

func _on_Player_2_pontua2():
	if score2 < 10:
		score2 += 1
		$ponto.play()
		$placar2.text = str(score2)
	if score2 >= 10:
		$Button.show()
		$tema.stop()
		$resultado.text = "P2 Ganhou!"
		$ganhou.play()
		$horacarrolento.stop()
		$horacarrorapido.stop()


func _on_Button_pressed():
	$Button.hide()
	$ganhou.stop()
	$tema.play()
	score1 = 0
	score2 = 0
	$placar1.text = "0"
	$placar2.text = "0"
	$resultado.text = ""
	$horacarrolento.start()
	$horacarrorapido.start()
	$Player1.volta()
	$Player2.volta()
	$crono.text = "300"
	$vida1.text = "10"
	$vida2.text = "10"
	live1 = 10
	live2 = 10
	cron = 300

func _on_Timer_timeout():
	$crono.hide()
	if score1 > score2:
		$tema.stop()
		$ganhou.play()
		$resultado.text = "P1 Ganhou!"
		$horacarrolento.stop()
		$horacarrorapido.stop()
		$Button.show()
	if score2 > score1:
		$tema.stop()
		$ganhou.play()
		$resultado.text = "P2 Ganhou!"
		$horacarrolento.stop()
		$horacarrorapido.stop()
		$Button.show()
	if score1 == score2:
		$tema.stop()
		$ganhou.play()
		$resultado.text = "Empate seus ruins!"
		$horacarrolento.stop()
		$horacarrorapido.stop()
		$Button.show()	
			

func _on_Timer2_timeout():
	cron -= 1
	$crono.text = "Tempo: " + str(cron)


func _on_Player_1_hit():
	live1 -= 1
	$vida1.text = str(live1)	
	if live1 == 0:
		$Button.show()
		$tema.stop()
		$resultado.text = "P2 Ganhou!"
		$ganhou.play()
		$horacarrolento.stop()
		$horacarrorapido.stop()	


func _on_Player_2_hit2():
	live2 -= 1
	$vida2.text = str(live2)	
	if live2 == 0:
		$Button.show()
		$tema.stop()
		$resultado.text = "P1 Ganhou!"
		$ganhou.play()
		$horacarrolento.stop()
		$horacarrorapido.stop()



