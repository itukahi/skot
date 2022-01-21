class Chat < ApplicationRecord
    belongs_to :target
    after_create_commit { MessageBroadcastJob.perform_later self}
end
