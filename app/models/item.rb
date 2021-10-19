class Item < ApplicationRecord
  belongs_to :list, counter_cache: true

  validates :body, presence: true
end
