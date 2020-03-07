// A rough-hearted braggart convinced of his own divinity. His proof is his absurdly good fortune in games of chance - but tho his luck is undeniable, deep down the man remains hungry for that which money cannot buy. 


self.role = "Gambler"

var no_item_taken = [
"I have FORESIGHT. I am as a GOD among gamblers. I am a GOD!!!"
,"On THIS day I have gripped luck by the scruff of the neck and pulled from it's muzzle a fortune in winnings. Credit, a'course."
, "I'll tempt fate again a'fore long."
,"For now I am BASKING in my own radiant divinity, which you may observe."
];
self.speech_map[? EPILOGUE + NO_TAKEN_ITEM] = [
"He managed to run an underground gambling house for Osterogi sailors."
];

self.speech_map[? COINS] = [
"Oh, you come against the God of Gambling with a handful of gold? How sweet to hear my language spoken!"
, "I appreciate the favor, and I suppose it’s a gamble how this favor will return to you? "
];
self.speech_map[? EPILOGUE + COINS] = [
"He managed to run an underground gambling house for Osterogi captains."
];


self.speech_map[? FAMILY_SEAL] = [
"Oh, indeed, a family seal. I wouldn't know it from the face of a coin, but it's dignified. Very dignified."
, "I do believe it suits a God of Gambling to change his game. With my winnings I could start a house as good as any."
, "Suppose the first matter would be to buy a house much too big for myself."
, " Aware of any plots, dear stranger?"
];
self.speech_map[? EPILOGUE + FAMILY_SEAL] = [
"He managed to run an underground gambling house for Osterogi generals."
];

self.speech_map[? NOTICE_OF_PROPERTY] = [
"... A house? A house. Of good location and in repair, fit for a rising family. The family I am yet to acquire, but still..."
, "I suppose you'd see me put this glittering pile of mine into a plot of earth and walls of wood. Indeed, I might."
, "A'fore you consider the favor done, I'd repay you. 'Twas collateral on a bet that came unpaid, and now it pays you."
, "A shame, friend. However, I did warn you I was a God. Silly to challenge me bearing that detail in mind."
, "I'll buy this house and it will be my shrine and temple!"
];
self.speech_map[? GIVING_ITEM + NOTICE_OF_PROPERTY] = [
"For inspiring me, I'll give you a gift!"
];
self.speech_map[? EPILOGUE + NOTICE_OF_PROPERTY] = [
"He managed to run an underground gambling house for Osterogi generals."
];

self.giving_map[? NOTICE_OF_PROPERTY] = FORIEGN_AMULET;


return no_item_taken