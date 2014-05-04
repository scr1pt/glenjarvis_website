set :application, "GlenJarvis.com Website"
set :repository,  "git@github.com:glenjarvis/glenjarvis-website.git"
set :scm, :git
set :use_sudo, false
set :deploy_to, "/var/apps"
set :user, "web"

role :web, "aws_prod1"
role :app, "aws_prod1"
role :db,  "aws_prod1", :primary => true

set :rvm_ruby_string, 'ruby-2.0.0-p353@glenjarvis-website'
