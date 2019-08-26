/// @desc Initalize
globalvar player;
player = self;
// Sprites for the player
spr_up = spr_player_up;
spr_right = spr_player_right;
spr_down = spr_player_down;
spr_left = spr_player_left;

// Global vars
globalvar speaker;
speaker = false;

globalvar timer;
timer = 0;

globalvar show_inventory;
show_inventory = false;

// -- SPEECH KEYS
globalvar NULL_ITEM;
NULL_ITEM = "null_item";
globalvar NO_TAKEN_ITEM;
NO_TAKEN_ITEM = "no_taken_item";
globalvar GIVING_ITEM;
GIVING_ITEM = "giving_item";


//----- ITEMS

globalvar items_map;
items_map = ds_map_create();

globalvar BOAT_TICKET;
BOAT_TICKET = "Boat_Ticket";
items_map[? BOAT_TICKET] = false;

globalvar PAPER;
PAPER = "Paper";
items_map[? PAPER] = false;

globalvar COINS;
COINS = "Coins";
items_map[? COINS] = true;

globalvar HISTORY_BOOK;
HISTORY_BOOK = "History_Book";
items_map[? HISTORY_BOOK] = false;

globalvar SPICES;
SPICES = "Spices";
items_map[? SPICES] = false;

globalvar SILVER_FORK;
SILVER_FORK = "Silver_Fork";
items_map[? SILVER_FORK] = false;


globalvar OLD_NOTE;
OLD_NOTE = "Old_Note";
items_map[? OLD_NOTE] = false;

// -- The current selected item in the inventory
globalvar items_index;
items_index = 0;

// The map of items the player currently owns
globalvar owned_items_array;
owned_items_array = [];

