# Q0: Why are these two errors being thrown?
The first error occurs because db is changed but not migrated.
The second error occurs because Pokemon model is not created but used in home controller.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
Each of them appears approximately with the same probability using sample method.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
When clicking on the button the capture_path looks for path defined in routes with prefix "capture" and pass in the current pokemon to the method corresponding to the path.
# Question 3: What would you name your own Pokemon?
As my name?
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
It's not a path but rails will match the prefix from the route to the correct path
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It shows the message on top of the page, saying either Name can't be blank or Name has already been taken.
https://github.com/apa915436/proj1/
# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
