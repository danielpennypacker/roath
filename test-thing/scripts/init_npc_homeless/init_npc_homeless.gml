self.role = "Homeless man"
self.giving_map[? BOAT_TICKET] = SPICES;

var no_item_taken = [
"These goddamn people here. I'm glad the Osterogi are going to invade, maybe that'll teach them a thing or two about sharing!"
, "Sure one of the rich merchants will sponsor the occasional party, and sure, I'll join the drinking then. But when was the last time any of them gave me a sip of their imported wines at the end of the work week."
, "They've got so much, but I'm stuck here begging for pennies so that I can have a little comfort with the cheapest wine there is."
, "No one cares about me anyways, and I don't care what happens here."
];

self.speech_map[? BOAT_TICKET] = [
"Thank you so much! No one's ever given me something like this, thank you so much!"
, "I promise when I get there I'll try to get a job again, and more more cheap wine for me. Only the top shelf from now on!"
, "Giving Spices: Here take these, it's some kind of spice, they fell off a cart yesterday and I uhm, kept them."
]
self.speech_map[? GIVING_ITEM + BOAT_TICKET] = [
"Here take these, it's some kind of spice, they fell off a cart yesterday and I uhm, kept them."
];

return no_item_taken;