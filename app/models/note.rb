class Note < ApplicationRecord
    belongs_to :notebook
    validates :title, :content, presence: true 
end
