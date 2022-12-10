randomize()
game_title = "The ";
var game_types = ["Dark", "Cryptic", "Forgotten", "Mystic", "Eerie", "Mystical", "Enchanted", "Haunted", "Vengeful", "Cursed"];
var game_adjectives = ["Really Cool", "Mystical", "Fantastic", "Explosive", "Crazy"];
var game_nouns = ["Dungeon", "Catacombs", "Hold", "Depths", "Underdark", "Halls of Peril"];

game_title += game_adjectives[irandom(array_length(game_adjectives) - 1)] + " ";
game_title += game_types[irandom(array_length(game_types) - 1)] + ": ";
game_title += game_nouns[irandom(array_length(game_nouns) - 1)];



// Example output: "Fantastic RPG: Escape"