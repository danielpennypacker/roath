self.role = "Chef"

var no_item_taken = [
"I’ve been working at noodle shops the last 4 years."
, "It’s so much easier easier to open your own place if you can say you’ve been trained in Roath."
,"I’ll be leaving soon, and I’ve traded seals with most of my friends. I’m sure we’ll stay in touch back in Bosk."
, "We’re putting together just one more meal before we all leave, I’m just missing the Paluk Spice that you’re supposed to use for them. It’s been so crazy with everyone preparing for the invasion that there’s been all kinds of shortages. It’s salty and sweet. "
];

self.giving_map[? SPICES] = FAMILY_SEAL;
self.speech_map[? SPICES] = [
"Oh wow, thank you! Where’d you find this!? You know what, I don’t even want to know. I’ll be able to make Paluk cakes, and that’s enough. "
, "Paluk cakes are the best thing I’ve learned how to make here."	
, "Hopefully this will be like a part of Roath I can share with everyone back home."
, "When I get home I’m gonna open up with Paluk Cake Cart, and then once I’ve got a good system I can ask my mom for some more investment. I think it’s better to think of this dinner as the start of something instead of an ending."
]
self.speech_map[? GIVING_ITEM + SPICES] = [
"Here take this seal. Next time you're in Bosk you can use it to get past the front gate of my family's estate."
]

return no_item_taken;