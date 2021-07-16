Redmine::Plugin.register :redmine_activerecord_session_store do
  name 'Redmine ActiveRecord Session Store plugin'
  author 'Björn Kalkbrenner'
  description 'Use ActiveRecord as Redmine session store'
  version '0.0.2'
  url 'https://github.com/terminar/redmine_activerecord_session_store'
  author_url 'mailto:terminar@cyberphoria.org'

  RedmineApp::Application.config.session_store :active_record_store
end
