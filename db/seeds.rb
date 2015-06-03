# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
contests = [
  ["A-Kon 25 Costume Contest", "A-Kon, is a three day anime convention held annually in Dallas, Texas usually on the first weekend of June.", "Dallas, Texas"],
  ["Florida SuperCon 2014", "The LARGEST Comic Con in Miami, Florida Supercon is South Florida’s Comic Book, Anime, Animation, Video Game, Fantasy, Sci-Fi and Pop Culture Convention.", "Miami Beach, FL"],
  ["Emerald City Comic Convention", "ECCC is the largest comic book and pop culture convention in the pacific northwest!", "Seattle, WA"]
]

contests.each do |name, description, location|
  Contest.create(name: name, description: description, location: location)
end

category_description = [
  ["Hall Cosplay", "The Hall Costume Contest is a cosplay craftsmanship contest. There is no performance involved in entering."], 
  ["Children’s Awards", "For those 12 and under"], 
  ["Judge's Awards", "Each judge may grant an award to an entry that they feel is exceptional."], 
  ["Single Awards", "Collection of Awards which have a single focus"], 
  ["Open Division Awards", "This category is intended for costumers with novice to intermediate experience in making costumes. Those with basic training will be permitted to compete in this division."], 
  ["Advanced Division Awards", "The Advanced category is intended for people with advanced formal training in costuming or fashion, extensive experience in making costumes, or who have won several awards for costumes."], 
  ["Best in Show", "Top Award for the entire Convention"], 
  ["Master's Category", "For master cosplayers."], 
  ["Comics Category", "For costumes related to comic books."], 
  ["Sci-Fi Category", "Costumes related to the world of science fiction."], 
  ["Fantasy Category", "Costumes related to the world of fantasy."], 
  ["Video Game Category", "Costumes related to video games."], 
  ["Group Category", "Costumes involving more than one person"]
]

category_description.each do |name, description|
  CategoryDescription.create(name: name, description: description)
end

entries = [
  ["2nd Place", "", "Gaige from Borderlands"],
  ["1st Place", "", "Elsa From Frozen"],
  ["Most Creative", "", "Sakizou Mermaid"],
  ["Walkon Open #69", "Brothers Requiem Cosplay", "Death & Death the Kid from Soul Eater"],
  ["Walkon Open #60", "Akito & Tish", "Ryuk from Death Note"],
  ["Walkon Open #7", "The Green Family", "Dalek & Dr. Who"],
  ["Walkon Open #17", "Sazh, Dajh and Mary Mumphrey", "Sazh & Dajh Katzroy from Final Fantasy 13"],
  ["Judge Velours Requiem:Walkon Advanced #20", "Payton Schmall", "Death Knight from World of Warcraft"],
  ["Judge Mindtailor:Walkon Open #71", "Josh", "Ho-Oh Centurion from Pokemon"],
  ["Judge MegumiBish:Walkon Open #67", "Ulfbert, Star, Oliver, Uriah and Lucas", "Monster Hunters from Monster Hunter"],
  ["Judge Cat from PirateKitty Crafts:Walkon Advanced #16", "Shinka Studios and Dugfinn Cosplay", "Raiden & Sunny from Metal Gear Rising: Revengeance"],
  ["Judge Elin Winkler:Walkon Open #2", "Leila Nami", "Mink from Dragon Half"],
  ["People’s Choice Award:Walkon Open #59", "Marieartcorner", "Jessica Rabbit from Who Framed Roger Rabbit"],
  ["Best Prop Award:Walkon Open #14", "Jillian of JAMS Cosplay", "Dante from Dante’s Inferno"],
  ["Best Non-Anime Award:Skit Advanced #2 “I Should Go”", "Evil Twins Cosplay", "Mass Effect"],
  ["Best Skit Award:Skit Advanced #6- “The Empty Village”", "Forever Alone", "Cyrus from Animal Crossing New Leaf"],
  ["Third Place:Walkon Open #3", "Patricia, Carolyn and Michele", "Hua, Bao, and Feng from Powerpuff Dynasty (original concept)"],
  ["Second Place:Walkon Open #28", "Kyle, Taylor, Rissa and Megan", "Double, Painwheel, Regina and Black Dahlia from Skullgirls"],
  ["Best in Show (For Division):Walkon Open #22", "Black Waltz 2 from Final Fantasy 9", "Silver Faction"],
  ["Third Place Walkon Advanced #5", "Shouri Cosplay Troupe", "Princess Sakura, Syaoran and Fai D. Flowright from Tsubasa Reservoir Chronicle"],
  ["Second Place Walkon Advanced #10", "Eva Birch", "Sialynn the Celestial Battle Nymph, personal bodyguard of Queen Titania from Midsummer Night’s Dream (original concept)"],
  ["Best in Show (For Division): Walkon Advanced #15", "Ashley of Alpacosplay", "Queen Elsa from Frozen (coronation gown)"],
  ["Winner Novice Solo", "Wade Artorias", "Artorias the Abysswalker From: Dark Souls"],
  ["Winner Novice Group", "Jillian and Diana", "Diana and Bandit Sivir From: League of Legends"],
  ["Winner Journeyman Solo", "Trey", "Deathstroke From: Arkham Asylum"],
  ["Winner Journeyman Group", "Alex, Nicholas, Brittan", "Urdnot Grunt, Tarquin Victus, Aria T’Loak From: Mass Effect"],
  ["Winner Master", "Purposeful Pretenders", "Xerxes, Artemecia, Themisticles From: 300: Rise of the Empire"],
  ["Winner Junior", "Jimmy Character", "Herc Henson From: Pacific Rim"],
  ["Winner Craft", "Apple Bunny", "The March Hare From: Sakizou’s Alice in Wonderland Collection"],
  ["Winner Original", "Daniel", "Grual War Chief From: Magic the Gathering"],
  ["Winner Prop", "Franchesca and Jacqueline", "League of Legends Elsa and Mereda From: League of Legends/Disney"],
  ["Winner Judges Awards", "Alex", "Hiccup from How to Train Your Dragon 2"],
  ["Winner Judges Awards", "Matthew", "The Great Muta From: Wrestling Kingdom 2"],
  ["Winner Judges Awards", "Sierra", "Iris, Goddess of the Rainbow From: Greek Mythology"],
  ["Winner Con Chair Award", "Stacy", "Halo Kitty Plushie From: Halo/ Hello Kitty"],
  ["Winner", "Bennie", "Alt-Eisen From: Super Robot Wars"],
  ["Winner", "RawrBomb", "General Zod"],
  ["Winner", "Eddy C", "Warrior Alien"],
  ["First Place", "Kelsey W", "Medieval Batgirl"],
  ["Second Place", "Jordan K", "Steampunk Hawkgirl"],
  ["Third Place", "Katie B", "Bluebird"],
  ["First Place", "Eddy C", "Warrior Alien"],
  ["Second Place", "Lynn Martin", "Aereon"],
  ["Third Place", "Stephanie Jurado-Smith", "Effie Trinket"],
  ["First Place", "Mary Mann", "Princess Celestia"],
  ["Second Place", "Gigawatts Cosplay", "Elsa"],
  ["Third Place", "Benny G Cosplay", "D&D Paladin"],
  ["First Place", "Julia Alfano", "Demon Hunter"],
  ["Second Place", "Ashley D", "Samara the Justicar"],
  ["Third Place", "Tiger Tessa", "Snowstorm Sivir"],
  ["First Place", "aidanrae, nathantwist, azimedes, shoomlah, hylianjean, Aidan N., Melinda R., Julia K., Alison H., Brian F", "Game of Thrones"],
  ["Second Place", "Anna B and others", "Snow White, Belle, Ariel"],
  ["Third Place", "Alex Baker and other", "Judges Dredd and Anderson"]
]

entries.each do |title, person, character|
  Entry.create(title: title, person: person, character: character)
end
