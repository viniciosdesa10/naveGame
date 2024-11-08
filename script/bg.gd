extends TextureRect

# Velocidade do movimento do background
var speed = Vector2(50, 0) # (50, 0) significa mover para a direita

func _process(delta):
	# Move a posição do background
	position -= speed * delta
	
	# Verifica se o fundo saiu da tela e reposiciona
	if position.x <= -texture.get_size().x:
		position.x += texture.get_size().x
