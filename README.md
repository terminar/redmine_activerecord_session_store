# Redmine ActiveRecord Session Store plugin

## Compatibilty

Tested with Redmine 4.1.x

## Installation

1. RAILS_ENV=production bundle exec rake db:sessions:create
2. RAILS_ENV=production bundle exec rake db:migrate
3. RAILS_ENV=production bundle exec rake redmine:plugins:migrate
4. Restart your webserver
5. Open Redmine and check if the plugin is visible under Administration > Plugins

## Maintenance

RAILS_ENV=production bundle exec rake db:sessions:clear

or

RAILS_ENV=production bundle exec rake db:sessions:trim

every 30 days, maybe...

## Removal

1. rake console
    > ActiveRecord::Migration.drop_table(:sessions)
2. bundle exec rake redmine:plugins:migrate NAME=redmine_activerecord_session_store VERSION=0 RAILS_ENV=production
3. remove plugin from plugins/ folder
