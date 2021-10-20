class Diary < ApplicationRecord
    belongs_to :user,optional:true
    belongs_to :diarytitle,optional:true
end
