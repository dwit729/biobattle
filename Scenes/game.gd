extends Node2D

@onready var trans = $testtransition/AnimationPlayer
#@onready var pieces = $board/pieces
#
##imports
#const CELL = preload("res://Scenes/cell.tscn")
#
#const SPECIES = preload("res://Scenes/species.tscn") #private - 1 - 10pcs
#const GENUS = preload("res://Scenes/genus.tscn") #spy - 2 - 4pcs
#const FAMILY = preload("res://Scenes/family.tscn") #sergeant - 3 - 1pc
#const ORDER = preload("res://Scenes/order.tscn") #colonel - 4 - 2pcs
#const DOMAIN = preload("res://Scenes/domain.tscn") #major general - 5 - 1pc
#const PHYLUM = preload("res://Scenes/phylum.tscn") #five-star general - 6 - 1pc
#const KINGDOM = preload("res://Scenes/kingdom.tscn") #flag - 7 - 1pc
#
##variables
#const BOARD_CELLS = 8
#const CELL_WIDTH = 18
#var board : Array
#var p1 : bool
#var state : bool
#var moves = []
#var selected_piece : Vector2

func _ready() -> void:
	trans.play("fadeout")
	await get_tree().create_timer(0.5).timeout
	#board.append([0,0,1,2,7,1,0,0])
	#board.append([1,3,2,1,6,2,4,1])
	#board.append([1,5,4,1,1,2,7,1])
	#board.append([0,0,0,0,0,0,0,0])
	#board.append([0,0,0,0,0,0,0,0])
	#board.append([-1,-5,-4,-1,-1,-2,-7,-1])
	#board.append([-1,-3,-2,-1,-6,-2,-4,-1])
	#board.append([0,0,-1,-2,-7,-1,0,0])
	#
	#display_pieces()
	#
#func display_pieces():
	#for i in BOARD_CELLS:
		#for j in BOARD_CELLS:
			#var cell = CELL.instantiate()
			#pieces.add_child(cell)
			#cell.global_position = Vector2(j * CELL_WIDTH + (CELL_WIDTH / 2), -i * CELL_WIDTH - (CELL_WIDTH / 2))
			#
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
