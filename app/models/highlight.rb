class Highlight < ActiveRecord::Base
  attr_accessible :description, :title

  belongs_to :user

  validates :title, :description, presence: true
end
