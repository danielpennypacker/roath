self.role = "Historian"

self.giving_map[? NO_TAKEN_ITEM] = HISTORY_BOOK;
self.giving_map[? COINS] = SILVER_FORK;

var takes_coins = [];
takes_coins[0] =  @"
Well thank you for this money! I can spend this on shipping a couple books out.
"
self.speech_map[? COINS] = takes_coins;

var giving_item = [];
giving_item[0] = @"
This is an old antique that I found, here, have it.    
"
self.speech_map[? GIVING_ITEM + COINS] = giving_item;


var giving_item = [];
giving_item[0] = @"
Here, just take this an sell it somewhere else, anywhere else! I'm sure some 
uptight nobel in Bosk would love it. And... thank you.
"
self.speech_map[? GIVING_ITEM + NO_TAKEN_ITEM] = giving_item;

var no_item_taken = [];
no_item_taken[0] = @"
You're from where? Well anyways, don't worry, just listen and I'll give you a book.
Men have died trying to steal these, but now these idiots just want bread and 
water for the journey out of here.
"
no_item_taken[1] = @"
Really, what's one life for all thie knowledge. I've dedicaded my whole life to 
preserving these books, and I'm sure the Osterogs will burn anything that says they 
haven't owned Roath since the beginging of time. 
"
return no_item_taken;