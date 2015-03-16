# Bash Scripting

This exercise will help you get better at writing bash scripts.


Something that takes user input & uses it - will force learning
variables

Command line args are important too

For loop - use an array

if statements


## Requirements

You're going to write a script that will generate a robot name

* If user supplies a name via a command line argument, use that name
* If the user doesn't supply a name, ask him / her for one.
* If the user doesn't supply a name when prompted, suggest the names in
  `name_suggestions.txt` one by one, and see if the user likes any of
those
* If the user still doesn't like any of those, generate one for him.
* Names must contain a number. If the user picks or supplies a name that
  doesn't have a number, append one to the name
* Robot names must be unique. Before assigning a robot a name, check
  `name_registry.txt` to make sure the name isn't already taken.
* If a name is taken, notify the user and go through the prompting steps
  mentioned above.
* After assigning a name, put it in `registry.txt`

## Bonus

Robot names being locally unique is lame. Make them globally unique
instead. Instead of looking at name_suggestions.txt, get the JSON list
of name suggestions from an api and display those.

After the user has chosen a name, send a POST request to the same url to
remove the name from the list.

_Note_ I ran out of free Heroku repos, so the host for the api will change.
You can run it yourself by checking out the name_api branch of this
repo.

The route that you'll want to GET is /names.json
For POSTing a taken name, POST the name to the same url.

## Resources

[Bash Scripting
Tutorial](http://linuxconfig.org/bash-scripting-tutorial)

