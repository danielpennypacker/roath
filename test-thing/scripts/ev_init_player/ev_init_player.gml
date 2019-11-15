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

globalvar items_descriptions;
items_descriptions = ds_map_create();

globalvar BOAT_TICKET;
BOAT_TICKET = "Boat_Ticket";
items_map[? BOAT_TICKET] = true;
items_descriptions[? BOAT_TICKET] = "A one way ticket from Roath to Bosk.";

globalvar COINS;
COINS = "Coins";
items_map[? COINS] = true;
items_descriptions[? COINS] = "All the money you brought with you. About a week's wages."

globalvar HISTORY_BOOK;
HISTORY_BOOK = "History_Book";
items_map[? HISTORY_BOOK] = true;
items_descriptions[? HISTORY_BOOK] = "An old history book, titled: The 17 Merchants of the first Convoy."

globalvar SPICES;
SPICES = "Spices";
items_map[? SPICES] = false;
items_descriptions[? SPICES] = "A pouch of red spcies that tasty salty and sweet."

globalvar FAMILY_SEAL;
FAMILY_SEAL = "Family_Seal";
items_map[? FAMILY_SEAL] = false;
items_descriptions[? FAMILY_SEAL] = "A wax seal from a wealthy Bosk family."

globalvar OLD_NOTE;
OLD_NOTE = "Old_Note";
items_map[? OLD_NOTE] = false;
items_descriptions[? OLD_NOTE] = "An old note that reads: Dear Tristan, there's I know you'll never staywhen the Osterogi get here, but I will, and you can always come back to me."


// -- The current selected item in the inventory
globalvar items_index;
items_index = 0;

// The map of items the player currently owns
globalvar owned_items_array;
owned_items_array = [];

