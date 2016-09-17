# Example Ruby Testbed

/.ruby-version 
This file indicates to them which Ruby version should be used when running stuff
in this project.  Saves a lot of headaches in the cases where you don't realize
that you're not running your code against the same Ruby version/dependencies you
thought you were. Tools like `rbenv` and `RVM` read this file to determine which 
version of Ruby they should use to run the code in this directory.

/Gemfile 

This file (and Gemfile.lock) list the dependencies needed by this project. It's
consumed by a tool called [Bundler](https://bundler.io), which is the standard
tool for dependency management in Ruby. Even though this is just a small
sandbox, I highly recommend using this for all Ruby projects.

/Rakefile 

Rake (Ruby Make) is a powerful tool for task management in Ruby. When I'm
working on code, I usually use Rake as an entry point.

/bin/ 

This directory is for Ruby scripts that are executable directly from the command
line.  Generally speaking, I only use this directory for executables which I
expect the *user* of the project to run, not executables which I'm using during
development.

/lib/ 

This directory is where all your 'actual' code should live. Make sure this
directory is on Ruby's `$LOAD_PATH` at runtime, or the `require` method won't
be able to resolve your Ruby files!
