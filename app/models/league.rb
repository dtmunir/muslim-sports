# == Schema Information
#
# Table name: leagues
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  sport       :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class League < ActiveRecord::Base
  attr_accessible :description, :name, :sport

  has_and_belongs_to_many :users

  validates :name, :presence => true, :uniqueness => true
  validates :sport, :presence => true


end
