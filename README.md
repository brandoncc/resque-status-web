# Resque::Statuse::Web

This gem provides tabs in [Resque Web](https://github.com/resque/resque-web) for managing 
[Resque Status](https://github.com/quirkey/resque-status). 

It works with any version of Resque and Resque Scheduler, but requires the 
[Resque Web gem](https://github.com/resque/resque-web),
rather than the older [Resque Web Sinatra interface](https://github.com/resque/resque/tree/1-x-stable#the-front-end)
that comes bundled with Resque 1.x. 

This gem is a port of the old Sinatra code to the new Resque Web plugin architecture.

The Sinatra interface will be deprecated when Resque 2 is released, so if you want
to get ahead of the curve, you can start using the latest Resque Web gem today.


## Installation

Add this line to your application's Gemfile:

    gem 'resque-scheduler-web'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install resque-scheduler-web


## Usage

The gem will automatically add the correct tabs, provided you have the Resque
Web engine mounted like this in routes.rb:

    mount ResqueWeb::Engine => 'admin/resque_web'

## What's Missing

Tests! This gem has no tests, mostly because it was my first engine and I was so
focused on getting it to work, I didn't write any tests during implementation.
If you would like, you are welcome to contribute tests or anything else which
you believe this gem is lacking.


## Contributing

1. Fork it ( https://github.com/brandoncc/resque-status-web/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


## Acknowledgements

The original code and tests for this gem were taken from the Resque Status gem's
Sinatra interface, and subsequently adapted into a Rails engine. Kudos and
thanks to the [original](https://github.com/quirkey/resque-status/commits/master/lib/resque/scheduler/server.rb)
[authors](https://github.com/quirkey/resque-status/commits/e0e91aa238c51db12794755430a7411c6ad1bfca/lib/resque_scheduler/server.rb).

Also, thanks to @mattgibson whose [resque-scheduler-web](github.com/mattgibson/resque-scheduler-web) gem was the inspiration and
blueprint I used when creating this gem. Thanks for leading the way!
