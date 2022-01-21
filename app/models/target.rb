class Target < ApplicationRecord
    has_many :chats, dependent: :destroy
end
