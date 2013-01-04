class Team < ActiveRecord::Base
  attr_accessible :description, :name, :sport

  has_and_belongs_to_many :users

  validates :name, :presence => true, :uniqueness => true
  validates :sport, :presence => true


end