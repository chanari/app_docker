bundle exec rails db:migrate
bundle exec rails assets:precompile
bundle exec rails s -p 3001 -b "0.0.0.0"
