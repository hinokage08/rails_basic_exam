class Website < ApplicationRecord
  validates :content, presence: true
end
