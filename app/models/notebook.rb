class Notebook < ApplicationRecord
    has_many :notes, :dependent => :destroy
    validates :title, presence: true
end
