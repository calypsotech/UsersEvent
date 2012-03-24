class Event < ActiveRecord::Base
EVENT_TYPES =[ ["guest lecture", 1], ["workshop", 2], ["entertainment", 3], ["reunion", 4], ["other", 5] ]

belongs_to :users
has_many :invitations 

validates_presence_of :name
validates_presence_of :description
validates_presence_of :event_type
validates_presence_of :date
validates_presence_of :location
end
