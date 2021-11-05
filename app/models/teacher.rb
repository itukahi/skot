class Teacher < ApplicationRecord
    validates :account,:password,:name,:hurigana,:grade,:klass, presence: true
    
end