// The maiden of Earthly pleasure, Amarrin is committed to her trade but not to the city of Roath. A foreigner, she seeks to eventually leave Roath and get even further from her homeland - to ply her trade as long as her vintage permits in places she'll remain unrecognized.

self.role = "Prostitute"

var no_item_taken = [
"The days go by so slowly without any entertainment, don't you think?"
,"Heavying your pocket with coin, days stacked on days of pursuit..."
, "I've learned in my travels that when a man hands me coin, such a spirit overtakes me that I can think of endless games to play."
,"When it suits you, consider a revision of diversions and join me for a game. I can't promise I'll stay in Roath forever, of course..."
];
self.speech_map[? EPILOGUE + NO_TAKEN_ITEM] = [
	"She was exiled with many others and put on a refugee ship. She arrived in a small Convoy port and married a local carpenter."
];

self.speech_map[? COINS] = [
"He comes to play! And with quite an observed handful - no need to be bashful."
, "We've said enough of coin, so now I'd speak to you of games."
, " And what a relief... I'm was bored of the typicality of today."
, "Follow me, and let us become more acquainted with the rules of this particular game."
];
self.speech_map[? EPILOGUE + NO_TAKEN_ITEM] = [
	"She was exiled with many others and put on a refugee ship. She arrived in a small Convoy port and opened a brothel for visiting sailors."
];



self.speech_map[? FORIEGN_AMULET] = [
"... you presume much to bring a foreigner such an unlikely trinket. Nevertheless, you presume correctly."
, "The bauble is mine and was since I was a girl."
, "Stolen from me days after arrival, I had given up on finding it before I left..."
, "However you've come to find it, I wont ask."
];
self.speech_map[? GIVING_ITEM + FORIEGN_AMULET] = [
"As your reward, I have this spare that I suspect will be of use to you…"
];

self.speech_map[? EPILOGUE + NO_TAKEN_ITEM] = [
	"She was exiled with many others and put on a refugee ship. She made her way to Bosk where she searched for who might be left of her family. She eventually found her cousin and helped her raise her children."
];
self.giving_map[? FORIEGN_AMULET] = CONVOY_BAND;


return no_item_taken