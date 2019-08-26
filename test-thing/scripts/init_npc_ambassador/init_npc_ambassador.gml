self.role = "Ambassador of Bosk"

self.giving_map[? NO_TAKEN_ITEM] = BOAT_TICKET;

var giving_item = [];
giving_item[0] = @"
Here, take this Boat Ticket. Maybe you can give it to someone who needs it. 
"
self.speech_map[? GIVING_ITEM + NO_TAKEN_ITEM] = giving_item;

var no_item_taken = [];
no_item_taken[0] = @"
I begged my King and Queen to send the army, but I couldn't convince them...
"
no_item_taken[1] = @"
They'd never been here, see the people, the parties...
"
no_item_taken[2] = @"
For some reason they think the White Horde will stop here. They think their navies can protect 
them forever.
"
return no_item_taken;