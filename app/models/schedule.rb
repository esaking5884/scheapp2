class Schedule < ApplicationRecord
    validates :title, {presence: true}
    validates :start_time, {presence: true}
    validates :finish_time, {presence: true}
    validate :start_is_before_finish
    
    def start_is_before_finish
        if start_time>finish_time
            errors.add(:finish_time, ":開始日時より後に設定してください")
        end
    end
end
