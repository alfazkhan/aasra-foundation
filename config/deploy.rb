# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "aasra-foundation"
set :repo_url, "https://github.com/alfazkhan/aasra-foundation.git"


# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/deploy/#{fetch :application}"

namespace :deploy do
  desc "reload the database with seed data"
  task :seed do
    on roles :all do
      execute "cd #{current_path}; bundle exec rake db:seed;"
    end
  end

  desc "Remove all but the last release"
  task :cleanup_all do
    set :keep_releases, 1
    invoke "deploy:cleanup"
  end

  desc "Database Reset"
  task :db_reset do
    on roles :all do
      execute "cd #{current_path};"
      excecute " bundle exec rails db:reset RAILS_ENV=#{rails_env}"
    end
  end

  desc "cd"
  task :cddir do
    on roles :all do
      execute "cd #{current_path}"
    end
  end

  desc "mm"
  task :main_on do
    on roles :all do
      within current_path do
        execute 'ls'
      end
    end
  end

end



# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets","vendor/bundle",".bundle", "public/system", "public/uploads","storage"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 1
# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
