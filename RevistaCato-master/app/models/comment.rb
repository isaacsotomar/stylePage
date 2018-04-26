class Comment < ApplicationRecord
  validates_presence_of :nickname
  validates_presence_of :opinion
  belongs_to :publication
end
