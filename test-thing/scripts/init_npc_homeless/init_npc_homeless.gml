self.role = "Homeless man"


self.giving_map[? BOAT_TICKET] = NULL_ITEM;

var takes_boat_ticket = [];
takes_boat_ticket[0] =  @"
What, you're giving this to me!? No one's ever given me something like this!
"
takes_boat_ticket[1] =  @"
Maybe I'll try my luck in the capital of Bosk! Thank you so much! I'll remember you
for the rest of my life! 
"
self.speech_map[? BOAT_TICKET] = takes_boat_ticket;

var no_item_taken = [];
no_item_taken[0] = @"
I don't have any family or friends. It doesn't matter if I stay or not. 
Where would I even go if I could leave!? 
"
no_item_taken[1] = @"
Maybe I'll be better off with the Osterogi in charge? These idiotic shits who love having 
their parties, but when do they ever spare me a drink?
"
no_item_taken[2] = @"
But gods I hear the Osterogi don't let you drink, I'm probably happier dead. 
"
return no_item_taken;