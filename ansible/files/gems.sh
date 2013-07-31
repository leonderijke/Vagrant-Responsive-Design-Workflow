#!/bin/bash

# Store the ruby version and the gem
ruby_version="$1"
gem="$2"

# Remove the ruby version and gem arguments and store the rest of the arguments
# as arguments to pass to the gem install command
shift
shift
arguments="$*"

# Make sure we can use RVM
. ~/.rvm/scripts/rvm
rvm use $ruby_version --default >> /dev/null

# Install the gem without RDoc and RI
gem install $gem --no-rdoc --no-ri $arguments && touch ~/.vagrant/installed-$gem