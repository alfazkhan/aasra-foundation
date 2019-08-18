namespace :deploy do
  desc "reload the database with seed data"
  task :seed do
    run "cd #{current_path}; bundle exec rake db:seed RAILS_ENV=#{rails_env};bundle exec rails db:reset RAILS_ENV=#{rails_env}"
  end

  desc "Remove all but the last release"
  task :cleanup_all do
    set :keep_releases, 1
    invoke "deploy:cleanup"
  end

  desc "Database Reset"
  task :db_reset do
    run "cd #{current_path}; bundle exec rails db:reset RAILS_ENV=#{rails_env}"
  end

  desc "maintenance mode"
  task :db_main do
    run "cd #{current_path}; rake maintenance:start"
  end

end