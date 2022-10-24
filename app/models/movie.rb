# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  belongs_to :director
  has_many :characters

  has_many :cast, :through => :characters, :source => :actor

  has_many :bookmarks
  has_many :bookmarkers, :through => :bookmarks, :source => :users

  validates(:title, {:presence => true})
  validates(:director_id, {:presence => true})
  validates(:year, {:presence => true})

end
