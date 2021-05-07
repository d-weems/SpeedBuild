class User < ApplicationRecord
  has_many :set_runs

  has_secure_password

  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :password, :on => :create
  validates_presence_of :password_confirmation, :on => :create
  validates_confirmation_of :password, :message => "does not match"
  validates_length_of :password, :minimum => 4, message: "must be at least 4 characters long", :allow_blank => true
end
