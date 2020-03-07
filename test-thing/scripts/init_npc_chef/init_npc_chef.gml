self.role = "Chef"

var no_item_taken = [
"I’ve been working in Roath’s noodle shops for the last 4 years."
, "It’s so much easier to open your own place if you can say you’ve been trained in Roath. I’m sad about the invasion, but I’m excited about returning home, I think this is a good time for me."
,"Most of my friends here are from Bosk too. We’ve traded family seals, and I’m sure we’ll stay in touch when we’re back."
, "We’re putting together just one more meal before we all leave. We’re all making our favorite Roathian recipes that we’ll be taking home with us. I’m just missing one ingredient to make Paluk cakes. It’s a salty and sweet spice, if you happen to find any."
];
self.speech_map[? EPILOGUE + NO_TAKEN_ITEM] = [
	"She returned to Bosk and opened her resturaunt. It met was successful but garnered little attention."
];

self.giving_map[? SPICES] = FAMILY_SEAL;
self.speech_map[? SPICES] = [
"Oh wow, thank you! Where’d you find this!? You know what, I don’t even want to know. I’ll be able to make Paluk cakes, and that’s enough."
, "This will be like a part of Roath I can share with everyone back home."
, "When I get home I’m gonna open up with Paluk Cake Cart, and then once I’ve got a good system I can ask my mom for some more investment. I think it’s better to think of this dinner as the start of something instead of an ending."
]
self.speech_map[? GIVING_ITEM + SPICES] = [
"Here take this seal. Next time you're in Bosk you can use it to get past the front gate of my family's estate."
]
self.speech_map[? EPILOGUE + SPICES] = [
	"At her final meal a famous food critic was amazed by her Paluk Cakes. He resturaunt was popular in Roath for several years until business eventuall wained."
];


return no_item_taken;