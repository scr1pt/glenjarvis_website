set :application, "GlenJarvis.com Website"
set :repository,  "git@github.com:glenjarvis/glenjarvis-website.git"
set :scm, :git
set :use_sudo, false
set :deploy_to, "/var/apps"
set :user, "webuser"

ssh_options[:keys] = ["#{ENV['HOME']}/.ssh/pem/glenjarvis_llc/aws_glenjarvis_prod.pem"]

role :web, "54.86.89.18"
role :app, "54.86.89.18"
role :db,  "54.86.89.18", :primary => true

set :rvm_ruby_string, 'ruby-2.0.0-p481@glenjarvis-website'
