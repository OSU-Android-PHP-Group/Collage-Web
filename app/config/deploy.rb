set :application, "collage"
set :domain,      "#{application}.united-ware.com"
set :deploy_to,   "/usr/local/www/apache22/data/#{application}"
set :app_path,    "app"

set :user, "deployer"
set :use_sudo, false
set :repository,  "git@#{domain}:#{application}"
set :branch, "production"
set :scm,         :git
set :git_enable_submodules, 1
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, `subversion` or `none`

set :model_manager, "doctrine"
# Or: `propel`

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain                         # This may be the same as your `Web` server
role :db,         domain, :primary => true       # This is where Rails migrations will run

# Symfony2 suggested options
set :shared_files,      ["app/config/parameters.ini"]
set :shared_children,     [app_path + "/logs", web_path + "/uploads", "vendor"]
set :update_vendors, false

set  :keep_releases,  5
