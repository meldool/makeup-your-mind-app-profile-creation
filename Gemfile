source 'https://rubygems.org'

gem 'rails',        '5.0.0.1'
gem 'puma',         '3.4.0'
gem 'sass-rails',   '5.0.6'
gem 'uglifier',     '3.0.0'
gem 'coffee-rails', '4.2.1'
gem 'jquery-rails', '4.1.1'
gem 'turbolinks',   '5.0.1'
gem 'jbuilder',     '2.4.1'
gem 'thor',         '0.19.1'

gem 'execjs', '~> 2.6'
# Source: "Devise Authentication in Depth" - https://www.sitepoint.com/devise-authentication-in-depth/
            # Adding 'devise', 'bootstrap' and 'jquery' gems.
gem 'devise', '4.2.0'
gem 'bootstrap-sass'
gem 'jquery-turbolinks'

# This gem is used for the Search facility in MYUM.
#gem 'ransack'
gem 'ransack', github: 'activerecord-hackery/ransack'

# This gem is used for uploading and customizing images in MYUM.
gem 'carrierwave', '>= 1.0.0.rc', '< 2.0'

group :development, :test do
  gem 'sqlite3', '1.3.12'
  gem 'byebug',  '9.0.0', platform: :mri
end

group :development do
  gem 'web-console',           '3.1.1'
  gem 'listen',                '3.0.8'
  gem 'spring',                '1.7.2'
  gem 'spring-watcher-listen', '2.0.0'
end

group :production do
  gem 'pg', '0.18.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]