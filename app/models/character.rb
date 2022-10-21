# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  belongs_to :movie
  belongs_to :actor

  # validates(:actor_id, {:presence => true})
  validates(:movie_id, {:presence => true})
  validates(:name, {:presence => true})
end
