extends Sprite2D

var velocidade = 200  # Velocidade de movimento em pixels por segundo

func _process(delta):
	var movimento = Vector2.ZERO  # Inicia o vetor de movimento

	# Verifica as teclas de seta e ajusta o vetor de movimento
	if Input.is_action_pressed("ui_right"):
		movimento.x += 1
	if Input.is_action_pressed("ui_left"):
		movimento.x -= 1
	if Input.is_action_pressed("ui_down"):
		movimento.y += 1
	if Input.is_action_pressed("ui_up"):
		movimento.y -= 1

	# Normaliza o vetor para evitar movimento mais rápido nas diagonais
	if movimento != Vector2.ZERO:
		movimento = movimento.normalized()

	# Atualiza a posição do sprite com base na velocidade e no delta de tempo
	position += movimento * velocidade * delta
