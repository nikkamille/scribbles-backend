class Notebook < ApplicationRecord
    has_many :notes, :dependent => :destroy
    accepts_nested_attributes_for :notes, update_only: true
    validates :title, presence: true
end
