self.role = "Chef"

var no_item_taken = [
"I came here 4 years ago to learn how to run a restaurant. It's so much easier easier to open your own place if you can say you've been trained in Roath. Everyone knows the best chefs have all been here."
, "I've traded seals with most of the friends I've made here, and I hope we can keep in touch. There's a couple locals that I hope can come stay with at my family's estate in Bosk, at least until this all blows over."
,"We're putting together just one more meal before we all leave, I'm just missing the Paluk Spice that you're supposed to use for them. It's been so crazy with everyone preparing for the invasion that there's been all kinds of shortages."
, "If you happen to see anything, it's colored red and is salty and sweet."
];

self.giving_map[? SPICES] = FAMILY_SEAL;
self.speech_map[? SPICES] = [
"Oh wow, thank you! Where'd you find there!? You know what, I don't even want to know. I'll be able to make Paluk cakes, that's the best thing I've learned how to make here."
, "When I get home I'm gonna open up with Paluk Cake Cart, and then once I've got a good system I can ask my dad for some more investment. I think it's better to think of this dinner as the start of something instead of an ending."	
, 
]
self.speech_map[? GIVING_ITEM + SPICES] = [
"Here take this seal. Next time you're in Bosk you can use it to get past the front gate of my family's estate."
]

return no_item_taken;