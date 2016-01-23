# tryout checkers

colors!

we (jbisnett, jeremywrnr) worked on this project for the cs games 2016. the
challenge was to create a checkers playing AI within an hour.

there is a simple makefile included which can let you run this code.

the main code with the alpha-beta pruning algorithm is in 'checkers.rb' which
loads the board.rb file, which handles storing the board state and computing
the next possible states.

overall, i enjoyed this process and learned about overwriting the 'to_s' method
in classes in ruby, which allows you to integrate more complex objects
seamlessly with puts. this reminded me of how puts works when you print out
instances of classes - it shows you the name of the class of which it is an
instance, and then also the location in memory (i think?) of where the class is
stored.

