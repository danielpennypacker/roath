self.role = "Historian"

self.giving_map[? NO_TAKEN_ITEM] = HISTORY_BOOK;

// example of giving + multiple items
// self.speech_map[? GIVING_ITEM + COINS] = giving_item;
// self.giving_map[? COINS] = SILVER_FORK;

self.speech_map[? GIVING_ITEM + NO_TAKEN_ITEM] = [
"Giving History Book: Here, just take this and sell it somewhere else, anywhere else! I'm sure some uptight nobel in Bosk would love it. And... thank you."
];
var no_item_taken = [
"You're from where? Well anyways, don't worry, just listen and I'll give you a book." 
, "Men have died trying to steal these, but now these idiots just want bread and water for the journey out of here."
, "Really, what's one life for all this knowledge. I've dedicated my whole life to preserving these books, and I'm sure the Osterogs will burn anything that says they haven't owned Roath since the beginning of time."
];

self.speech_map[? COINS] = [
"Thank you! I'll be able to use this to ship a few more books to an archive in Bosk."
, "This is a history of how the Convoy first started and how they decided to put the capital in Bosk."
, "It used to just be way to fight off pirates, but as it got bigger and bigger they realized they needed to create a proper government."
];


return no_item_taken