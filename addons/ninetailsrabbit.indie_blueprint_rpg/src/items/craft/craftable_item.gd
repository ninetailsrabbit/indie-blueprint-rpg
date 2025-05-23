class_name CraftableItem extends Resource

enum MaterialType {
	Food,
	Stone,
	Metal,
	Wood,
	Fabric,
	Leather,
	Gem,
	Liquid,
	Powder,
	Bone,
	Scale,     # From reptiles, fish
	Hide,      # Raw animal skin,
	Glass
}

@export var id: StringName
@export var display_name: String
@export_multiline var description: String
@export var material_type: MaterialType
@export var stackable: bool = true
@export var max_amount: int = 10:
	set(value):
		if value != max_amount:
			max_amount = value if stackable else 1
			

func is_food() -> bool:
	return material_type == MaterialType.Food

func is_stone() -> bool:
	return material_type == MaterialType.Stone

func is_metal() -> bool:
	return material_type == MaterialType.Metal
	
func is_wood() -> bool:
	return material_type == MaterialType.Wood

func is_fabric() -> bool:
	return material_type == MaterialType.Fabric
	
func is_leather() -> bool:
	return material_type == MaterialType.Leather
	
func is_gem() -> bool:
	return material_type == MaterialType.Gem

func is_liquid() -> bool:
	return material_type == MaterialType.Liquid
	
func is_powder() -> bool:
	return material_type == MaterialType.Powder
