class Diary < ApplicationRecord
    belongs_to :user,optional:true
    belongs_to :diarytitle,optional:true
    has_many :diary_coments
end
