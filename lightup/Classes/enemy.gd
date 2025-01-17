extends MBody
class_name Enemy

onready var hurtb=$HurtBox

#var dist2actor=INF

export var attack_range:=70
export var damage:=20
export var fire_time:=2.0

func _ready():
	hurtb.connect("area_entered", self, "_on_HurtBox_area_entered")

func _on_HurtBox_area_entered(area):
	var dmg=0
	if "damage" in area.get_parent():
		dmg=area.get_parent().damage
	if "damage" in area.get_parent().get_parent():
		dmg=area.get_parent().get_parent().damage
		print(area.get_parent().get_parent().damage)
	print(dmg)
	damage(dmg,area)
	print(hp)
 
func die():
	pass

func _process(delta):
	if Input.is_key_pressed(KEY_Y):
		die()
	if hp<=0:
		queue_free()
