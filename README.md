# Tiny URL

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
```
3.0.0@rails-6.1.4
```

* System dependencies
```
npm install --global yarn
bundle install
```

* Configuration
```
rails webpacker:install
```

* Database creation
```
rails db:setup
```

* Database initialization
```
rails db:migrate
rails db:seed
```

* How to run the test suite
```
bundle exec rspec
```

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions for localhost
```
echo "127.0.0.1  dev.tiny-url.ca tiny" | sudo tee -a /etc/hosts
cp .env_example .env
rails s
```

* QA
Implemented with overcommit and the folowing gems:
  - Brakeman
  - BundleAudit
  - Fasterer
  - Reek
  - Rubocop
