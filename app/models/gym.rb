class Gym < ApplicationRecord
    has_many :memberships, dependent: :destroy
    has_many :clients, through: :memberships

    def something_simple
        "#{self.clients.first.name}"
    end
end
