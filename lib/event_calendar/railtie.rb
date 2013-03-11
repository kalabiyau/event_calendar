require 'event_calendar/calendar_helper'

module EventCalendar
  class Railtie < Rails::Railtie
    initializer 'event_calendar.view_helpers' do
      ActionView::Base.send :include, CalendarHelper
    end
  end
end

require 'event_calendar/orm/mongoid' if defined? Mongoid
