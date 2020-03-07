self.role = "Historian"

self.giving_map[? NO_TAKEN_ITEM] = HISTORY_BOOK;

// example of giving + multiple items
// self.speech_map[? GIVING_ITEM + COINS] = giving_item;
// self.giving_map[? COINS] = SILVER_FORK;

var no_item_taken = [
"I’m an archivist at one of the local universities." 
, "I’m trying to get as many books out of here as I can."
, "I’m sure once the Osterogi get here will burn anything that says they haven’t owned Roath Forever."
, "Some of these books contain generations of knowledge. We can’t dishonor our ancestors' struggles by just forgetting them."
];

self.speech_map[? GIVING_ITEM + NO_TAKEN_ITEM] = [
"Here, just take this and sell it somewhere else, anywhere else! I'm sure some uptight nobel in Bosk would love it. And... thank you."
];
self.speech_map[? EPILOGUE + NO_TAKEN_ITEM] = [
	"He was able to get two thirds of the Roath history books off the Island, but the rest were burned when the Osteragi arrived. He was exiled from Roath and died on a refugee ship."
];

self.speech_map[? COINS] = [
"Thank you! I’ll be able to use this to ship a few more books to an archive in Bosk."
, "The Convoy used to be an alliance between a chain of port cities, and was just be way to fight off pirates. But as it got bigger and bigger they realized they needed to create a proper government."
, "Within 2 generations a powerful nation had arisen from seemingly nowhere."
];
self.speech_map[? EPILOGUE + COINS] = [
"He was able to gather enough books and money to open a library in a small trading port. Despite it's small size it's know as the best srouce of books on the history of Roath."
]

return no_item_taken