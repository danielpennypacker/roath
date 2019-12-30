
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

return no_item_taken;