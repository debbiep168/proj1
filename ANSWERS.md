# Q0: Why is this error being thrown?

This error is being thrown because there is no model named Pokemon.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

Every time we refresh the page, the home_controller accesses the Pokemon model database where all the different Pokemon are stored and grabs one of them with no trainer and randomly returns one of them.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

After you press the button "Throw a Pokeball!", the helper method capture_path accesses the path in routes.rb of "/capture" where it patches or puts to the database by changing who the trainer of the Pokemon is. The route "/capture" accesses the method capture in the pokemons_controller, which basically gets the Pokemon from the database and changes its trainer to the current_trainer who is logged in.

# Question 3: What would you name your own Pokemon?
Poke

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I redirected to the trainer's path whose trainerId is who the Pokemon I just damaged belongs to. I redirect to that trainer's page.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
@pokemon.errors.full_messages usually gives you an array of the errors that arose. Using to_sentence puts the errors into a readable format that you can print out for readers to read.

My repository I made for Part 7 is: https://github.com/debbiep168/proj1

# Give us feedback on the project and decal below!
The pace is going good. It would be nice to have more demos. Also, I linked the github repository for the project as my own public repository since the project spec in Part 7 said to create our own public repositories and push our code there.

# Extra credit: Link your Heroku deployed app
