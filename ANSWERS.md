# Q0: Why is this error being thrown?
	
	This error is happening because the Pokemon model hasn't been initialized yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

	In the HomeController, we are making "trainerless_pokemon" where all of them have the attribute "trainer: nil", and the random Pokemon are appearing when we're selecting a random one with the .sample method.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
	
	"Throw a Pokeball!" is the name of the button, "button medium" is the size of the button and the method being called is a ":patch". "capture_path(id: @pokemon" is calling the capture method while pasding the id of the pokemon to the method.

# Question 3: What would you name your own Pokemon?

	I usually don't name my Pokemon when playing, but maybe I'll name them after the Legion of Boom from Seattle. 

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

	I did a "redirect_to" to "trainer_path(current_trainer)" to get the current trainer path after dealing the damage.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

	application.html.erb is the default for rendering any page. At the very end of application.html.erb we are rendering 'layout/messages'. That then uses the _messages.html.erb file to display the error messages, as well as other notices in other cases. It uses "'each' to iterate through the flash hash" to get the appropriate messages

	source: http://railsapps.github.io/rails-default-application-layout.html

# Give us feedback on the project and decal below!

	The project was harder than I would've expected. I still get confused with pluralization and capitalization with models, controllers, etc. There are some basic things I feel a little uneasy about still, which made that demo day very helpful. The most helpful parts of the decal thus far have been the slower demo's. I continually run into windows issues making starting hws and projects a real pain as well, however, I'm not sure that's necessarily the facilitator's fault. 

# Extra credit: Link your Heroku deployed app
	
