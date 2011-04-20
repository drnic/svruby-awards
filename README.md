
## Dependencies

* Postgresql

## Development

Fetch the code:

    cd ~/Sites
    git clone git://github.com/drnic/svruby-awards.git
    cd svruby-awards
    bundle
    cp config/database.yml.example config/database.yml

Edit your DB config for your PG database.

    bundle exec rake db:create:all db:schema:load db:seed

To install Pow:

    curl get.pow.cx | sh

To add svruby-awards to Pow:

    gem install powder
    cd ~/Sites/svruby-awards
    powder
    open http://svruby-awards.dev

Click [Sign in with Meetup.com](http://svruby-awards.dev/auth/meetup) to signup. You will be given a free award for doing so!