extends Sprite2D

@onready var pieces: Node2D = $pieces

#imports
const CELL = preload("res://Scenes/cell.tscn")

#ayaw render nito kaya may testing ako na placeholder
const SPECIES = preload("res://Scenes/species.tscn") #private - 1 - 10pcs
const GENUS = preload("res://Scenes/genus.tscn") #spy - 2 - 4pcs
const FAMILY = preload("res://Scenes/family.tscn") #sergeant - 3 - 1pc
const ORDER = preload("res://Scenes/order.tscn") #colonel - 4 - 2pcs
const DOMAIN = preload("res://Scenes/domain.tscn") #major general - 5 - 1pc
const PHYLUM = preload("res://Scenes/phylum.tscn") #five-star general - 6 - 1pc
const KINGDOM = preload("res://Scenes/kingdom.tscn") #flag - 7 - 1pc

#const SPECIES = preload("res://Assets/sprite_species.png")
#const PHYLUM = preload("res://Assets/sprite_phylum.png")
#const ORDER = preload("res://Assets/sprite_order.png")
#const KINGDOM = preload("res://Assets/sprite_kingdom.png")
#const GENUS = preload("res://Assets/sprite_genus.png")
#const FAMILY = preload("res://Assets/sprite_family.png")
#const DOMAIN = preload("res://Assets/sprite_domain.png")

#test lang kasi ayaw lumabas nung sprites mismo
const SIDE_1_BACK_SPRITE_1 = preload("res://Assets/side1_back_sprite 1.png")
const SIDE_2_BACK_SPRITE_1 = preload("res://Assets/side2_back_sprite 1.png")

#variables
const BOARD_CELLS = 8
const CELL_WIDTH = 20
var board : Array
var p1 : bool
var state : bool
var moves = []
var selected_piece : Vector2

func _ready() -> void:
	#add piece locations sa board
	board.append([0,0,1,2,7,1,0,0])
	board.append([1,3,2,1,6,2,4,1])
	board.append([1,5,4,1,1,2,7,1])
	board.append([0,0,0,0,0,0,0,0])
	board.append([0,0,0,0,0,0,0,0])
	board.append([-1,-5,-4,-1,-1,-2,-7,-1])
	board.append([-1,-3,-2,-1,-6,-2,-4,-1])
	board.append([0,0,-1,-2,-7,-1,0,0])
	
	display_pieces()

func display_pieces():
	for i in BOARD_CELLS:
		for j in BOARD_CELLS:
			#instantiate ng holder ng cells
			var cell = CELL.instantiate()
			
			#set position para sa cells
			#cell.global_position = Vector2(j * CELL_WIDTH + (CELL_WIDTH / 2), i * CELL_WIDTH + (CELL_WIDTH / 2))
			cell.position = Vector2(j * CELL_WIDTH, i * CELL_WIDTH)
			pieces.add_child(cell)
			
			#match para sa specific pieces
			#match board[i][j]:
				#-7: cell.texture = KINGDOM
				#-6: cell.texture = PHYLUM
				#-5: cell.texture = DOMAIN
				#-4: cell.texture = ORDER
				#-3: cell.texture = FAMILY
				#-2: cell.texture = GENUS
				#-1: cell.texture = SPECIES
				#0: cell.texture = null
				#7: cell.texture = KINGDOM
				#6: cell.texture = PHYLUM
				#5: cell.texture = DOMAIN
				#4: cell.texture = ORDER
				#3: cell.texture = FAMILY
				#2: cell.texture = GENUS
				#1: cell.texture = SPECIES
				
			#test to kasi ayaw lumabas nung mismong sprites
			match board[i][j]:
				-7: cell.texture = SIDE_2_BACK_SPRITE_1
				-6: cell.texture = SIDE_2_BACK_SPRITE_1
				-5: cell.texture = SIDE_2_BACK_SPRITE_1
				-4: cell.texture = SIDE_2_BACK_SPRITE_1
				-3: cell.texture = SIDE_2_BACK_SPRITE_1
				-2: cell.texture = SIDE_2_BACK_SPRITE_1
				-1: cell.texture = SIDE_2_BACK_SPRITE_1
				0: cell.texture = null
				7: cell.texture = SIDE_1_BACK_SPRITE_1
				6: cell.texture = SIDE_1_BACK_SPRITE_1
				5: cell.texture = SIDE_1_BACK_SPRITE_1
				4: cell.texture = SIDE_1_BACK_SPRITE_1
				3: cell.texture = SIDE_1_BACK_SPRITE_1
				2: cell.texture = SIDE_1_BACK_SPRITE_1
				1: cell.texture = SIDE_1_BACK_SPRITE_1
