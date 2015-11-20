# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Quote.create!([
  {saying: "Be who you are and say what you feel because those who mind don't matter and those who matter don't mind.", author: "Theodore Geisel"},
  {saying: "... Some kind of help is the kind of help that helping's all about, and some kind of help is the kind of help that we all could do without.", author: "Shel Silverstein"},
  {saying: "Everyone seems to have a clear idea of how other people should lead their lives, but none about his or her own.", author: "Paulo Coelho"},
  {saying: "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.", author: "Albert Einstein"},
  {saying: "No one can make you feel inferior without your consent.", author: "Eleanor Roosevelt"},
  {saying: "I've learned that people will forget what you said, people will forget what you did, but people will never forget how you made them feel.", author: "Maya Angelou"}
])
