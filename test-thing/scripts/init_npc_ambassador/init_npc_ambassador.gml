self.role = "Ambassador of Bosk"

self.giving_map[? NO_TAKEN_ITEM] = BOAT_TICKET;

var no_item_taken = [
"I just want to people-watch one more time, I’ve loved this city so much."
,"I’ve been to Osterrog many times, and there’s no way they’ll let the city continue like this."
,"I tried to go to the Convoy Council to try and get them to intervene, so send the navy, help evacuate, anything. But it all fell on def ears. I’ve heard those selfish bastards talk endlessly about the vacations they’ve had here, but once there’s a real threat, they’re nowhere to be seen."
,"Maybe this war has been brewing for too long, I know of colleagues sailing to other nations right now, just waiting to hear about the sack of Roath. Once everyone sees how the Osterogi treat an undefended city, they’ll probably come begging to the Convoy for help."
];
self.speech_map[? GIVING_ITEM + NO_TAKEN_ITEM] = [
"Giving Boat Ticket: Here, take this ticket to Bosk. I’m leaving soon. I’m sure you can find someone who deserves it."
];

return no_item_taken;