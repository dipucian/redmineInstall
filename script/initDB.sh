cd /opt/redmine
bundle install --without development test
bundle exec rake generate_secret_token
RAILS_ENV=production bundle exec rake db:migrate

echo "en" > ans
RAILS_ENV=production bundle exec rake redmine:load_default_data < ans
