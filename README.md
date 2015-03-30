# Example Ruby Testbed

(Created in response to [this Reddit post](http://www.reddit.com/r/ruby/comments/30igbo/is_there_a_tool_like_firebug_for_ruby/))

First off, it's helpful to "own" your own directory structure.  Here's what usually shows up in my testbeds:

    /.ruby-version
Depending on the machine, I use `rbenv` or `rvm` to manage my Ruby version.  This file indicates to them which Ruby version should be used when running stuff in this project.  Saves a lot of headaches in the cases where you don't realize that you're not running your code against the same Ruby version/dependencies you thought you were.

    /bin/
This directory is for Ruby scripts that are executable directly from the command line.  Generally speaking, I use this directory very little because `rake` (see below) is my usual entry point.

    /lib/
This is your bread and butter.  It's where all the code that will be `require`'d into your testbed will live.  Within this directory, you can organize your Ruby any way you see fit.

    /Gemfile
USE BUNDLER.  Even for the smallest sandbox.  As you create these sandboxes/testbeds over and over, your Gemfiles will begin to be useful records of the tools you're using.

    /Rakefile
If used it already, you'll probably recognize that `rake` is the Swiss Army Knife of Ruby.  This will be the main entry point for your testbed.  At the beginning of the script, you'll `require` in your Bundler dependencies and the Ruby classes/modules you've stored in `/lib/`, and then the Rake tasks you define will call into those.
