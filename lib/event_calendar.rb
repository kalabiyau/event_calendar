require 'event_calendar/railtie' if defined?(::Rails::Railtie)
require 'active_support/concern'

module EventCalendar
  extend ActiveSupport::Autoload
  autoload :Extender
end

ActiveRecord::Base.send :include, EventCalendar::Extender
