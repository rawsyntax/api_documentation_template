## Accurate API Documentation

This repository is a minimal example showing how to create an API server with documentation that is always accurate and up to date.  The documentation is actually a result of passing Acceptance tests for the API, and it is also served by the API server itself.

It accomplishes this by using [grape](https://github.com/intridea/grape), [rspec\_api\_documentation](https://github.com/zipmark/rspec_api_documentation), and [raddocs](https://github.com/smartlogic/raddocs).


Generate the documentation specs by running:

`bundle exec rake docs:generate`

Start the server with:

`bundle exec rackup`

View the documentation at:

http://localhost:9292/docs
