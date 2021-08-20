class Sala < ApplicationRecord
    has_many :video

    validates :title, presence: true
end
