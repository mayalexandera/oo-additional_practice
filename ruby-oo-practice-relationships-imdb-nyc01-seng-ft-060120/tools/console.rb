require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


actor1 = Actor.new("Robert Downey Jr.")
actor2 = Actor.new("Gwenyth Paltrow")
actor3 = Actor.new("Tom Holland")
actor4 = Actor.new("Leonardo DiCaprio")
actor5 = Actor.new("Kate Winslet")
actor6 = Actor.new("Christian Bale")
actor7 = Actor.new("Jared Leto")
actor8 = Actor.new("Don Cheadle")
actor9 = Actor.new("Sandra Oh")
actor10 = Actor.new("Will Arnett")
actor11 = Actor.new("Ian Hendry")

character1 = Character.new('Tony Stark', actor1)
character2 = Character.new('Piper Pots', actor2)
character3 = Character.new('Peter Parker', actor3)
character4 = Character.new('Jack Dawson', actor4)
character5 = Character.new('Rose DeWitt', actor5)
character6 = Character.new('Patrick Bateman', actor6)
character7 = Character.new('Paul Allen', actor7)
character8 = Character.new('War Machine', actor8)
character9 = Character.new('Eve Polastri', actor9)
character10 = Character.new('Cristina Yang', actor9)
character11 = Character.new('Bojack Horseman', actor10)
character12 = Character.new('David Keel', actor11)

movie1 = Movie.new("Titanic", [actor4, actor5])
movie2 = Movie.new("American Psycho", [actor6, actor7])
movie3 = Movie.new("Iron Man", [actor1, actor2, actor8])
movie5 = Movie.new("The Avengers", [actor1, actor2, actor3, actor8])
movie4 = Movie.new("Spiderman", [actor1, actor3])

show1 = Show.new("The Avengers", [actor11])
show2 = Show.new("Bojack Horseman", [actor10])
show3 = Show.new("Killing Eve", [actor9])
show4 = Show.new("Grey's Anatomy", [actor9])


Pry.start
