self.role = "Homeless man"
self.giving_map[? BOAT_TICKET] = SPICES;

var no_item_taken = [
"Fuck off, *hic*"
,"You’re the same as these goddamn people here. I’m glad the Osterogi are going to invade, maybe that’ll teach them a thing or two about sharing!"
, "Sure one I can join the party when one of the rich merchants throws a party, but when was the last time any of them gave me a sip of their imported wines at the end of the work week."
, "No one here cares about me anyways. But if I could just get back to Bosk I bet I could turn my life around!"
];
self.speech_map[? EPILOGUE + NO_TAKEN_ITEM] = [
	"A week after the invasion he accidently threw up on an passing Osteragi Captain. He was pushed away, slipped, hit his head, and died."
];

self.speech_map[? BOAT_TICKET] = [
"Thank you so much! No one’s ever given me something like this, you’re being kinder to me than my own mother!"
, "I promise when I get there I’ll try to get a job again, and no more cheap wine for me. Only the top shelf from now on!"
]
self.speech_map[? GIVING_ITEM + BOAT_TICKET] = [
"Here let me at least give you somthing. It’s some kind of spice, they fell off a cart yesterday and I uhm, kept them."
];
self.speech_map[? EPILOGUE + NO_TAKEN_ITEM] = [
	"He escaped to Roath where he kept drinking until he died of old age."
];

return no_item_taken;