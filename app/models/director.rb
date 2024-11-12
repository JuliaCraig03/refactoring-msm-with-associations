# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  validates(:name, presence: true)
  belongs_to(:director, :class_name => "Director", :foreign_key => "director_id")
  has_many(:characters, :class_name => "Character", :foreign_key => "movie_id")
  has_many(:cast, :through => :characters, :source => :actor)
end
