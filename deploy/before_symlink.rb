if File.exists?("#{release_path}/../../shared/config/mongoid.yml")
  run "cp #{release_path}/../../shared/config/mongoid.yml #{release_path}/config/mongoid.yml"
  run "cd #{release_path} && RAILS_ENV=production bundle exec rake db:seed"
end
