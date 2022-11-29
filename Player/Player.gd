extends KinematicBody2D

onready var SM = $StateMachine

var velocity = Vector2.ZERO
var jump_power = Vector2.ZERO
var direction = 1

export var gravity = Vector2(0,30)

export var move_speed = 5
export var max_move = 200

export var jump_speed = 100
export var max_jump = 800

export var leap_speed = 5
export var max_leap = 200



func _physics_process(_delta):
	velocity.x = clamp(velocity.x,-max_move,max_move)
		
	if direction < 0 and not $AnimatedSprite.flip_h: $AnimatedSprite.flip_h = true
	if direction > 0 and $AnimatedSprite.flip_h: $AnimatedSprite.flip_h = false
	
	if $State.text != SM.state_name:
		$State.text = SM.state_name

func set_direction(d):
	direction = d

func set_animation(anim):
	if $AnimatedSprite.animation == anim: return
	if $AnimatedSprite.frames.has_animation(anim): $AnimatedSprite.play(anim)
	else: $AnimatedSprite.play()
