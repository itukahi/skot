class User < ApplicationRecord
    has_many :diaries
    validates :account,:password,:name,:hurigana,:grade,:klass,:number, presence: true
end
