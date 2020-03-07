
self.role = "Dock Worker"

var no_item_taken = [
"Welcom to Roath.",
"My shift just ended, Maybe my last one?",
"This is a hell of a time to get here. The Osterog Navy will be landing tomorrow."
,"No one really know's what's gonna happen. Everyone's been in a crazy mood, sharing their life stories scrambling to take what they can. At least this is a good time to talk to people!"
];

self.speech_map[? EPILOGUE + NO_TAKEN_ITEM] = [
"He left on the last ship out of Roath and worked the rest of his life as a docker worker in Bosk."
];

self.speech_map[? CONVOY_BAND] = [
"Well, that’s not a bad souvenir."
, "These arm bands are worn by Convoy captains, but they’re mostly ornamental now."
, "The Convoy is pretty good with records, and they keep good tabs on all their citizens. Faking being a captain would be crazy!"
, "The bands used to be made of pure gold, and originally to become a Convoy captain you had to literally buy your arm band."
];
self.speech_map[? EPILOGUE + CONVOY_BAND] = [
"He left on the last ship out of Roath and worked the rest of his life as a docker worker in Bosk. The Convoy Band you gave him sat on his mantle for the rest of his life."
]


return no_item_taken;