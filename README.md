## Requirements for Set Up
```
Ruby ^3.3.0
PostgreSQL ^14.10.0
Node ^20.12.0
```

## Set Up
First we need to clone the repository through HTTP.

Once cloned in our local machine we need to have the minimum requirements already in place.

### Step One
Generate the `config/database.yml` file for database configuration. Here is a snippet.
```
default: &default
  adapter: postgresql
  encoding: unicode
  username: cool_username
  password: complicated_password
  host: localhost
  port: 5432

development:
  <<: *default
  database: cocoa_development

test:
  <<: *default
  database: cocoa_test

production:
  <<: *default
  database: cocoa_production
  username: postgres
  password: <%= ENV["DATABASE_PASSWORD"] %>
```

### Step Two
Then from the file `.env.example` we can take the environment variables we need and create the `.env` file in the root of the project, it will look something like this up, (June, 2024).
```
  # rails variables
RAILS_MASTER_KEY=some_complicated_secret

# bullet variables
BULLET_DEBUG=false

# database variables
DATABASE_HOST=localhost
DATABASE_USER=postgres
DATABASE_PASSWORD=your_db_password
DATABASE_NAME=some_database_name
```

### Step Three
With this we can start the installation.
```
# Install rails back-end
bundle install

# Install vue front-end
npm install
```

### Step Four
Once installed we can run the database commands needed for our app to start working.
```
# Create database
rails db:create

# Generate migrations
rails db:migrate

# Seed database with init data
rails db:seed
```

Once done, finally we need to create the bundle of the front-end so we can run it along the Rails application.
```
# Create bundle
bin/vite build --clear --mode=development

# Start rails server
rails server
```

Now you can go to `localhost:3000` and will see that the app is running for rails home page, if you want to test the Vue front-end you can manually go to the demonstration page in: 

- localhost:3000/demos

Here you will se a basic example on which we will have future iterations.

## Contribution
Before submitting any `PR` please make sure you have run the following commands:
```
# ruby linter
rubocop

# javascript linter
npm run lint

# tests
bundle exec rspec
```
