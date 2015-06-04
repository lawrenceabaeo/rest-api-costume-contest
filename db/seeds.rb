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

entries = [["2nd Place", "A Convention Attendee", "Gaige from Borderlands"]]

entries.each do |title, person, character|
  Entry.create(title: title, person: person, character: character)
end
