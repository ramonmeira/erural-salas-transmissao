class Sala < ApplicationRecord
    has_many :video, dependent: :destroy

    validates :title, presence: true
end
