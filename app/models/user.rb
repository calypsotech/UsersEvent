class User < ActiveRecord::Base
mount_uploader :photo, PhotoUploader

has_many :events 
has_many :invitations, :through =>:events

validates_presence_of :firstName
validates_presence_of :lastName
validates_presence_of :email
validates_presence_of :andrewID
validates_presence_of :graduationYear
validates_presence_of :positionTitle
validates_presence_of :deptName
validates_presence_of :userName
validates_presence_of :password
validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
validates :email, :uniqueness => true

validates :firstName, :length => { :minimum => 2 }
validates :lastName, :length => { :minimum => 2 }
validates :password, :length => { :in => 6..20 }


end
 

