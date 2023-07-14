class Article < ApplicationRecord
    validates :name, presence: true,
                     uniqueness: true
    validates :body, presence: true,
                     length: { minimum: 5 }
    validates :title, presence: true,
                    uniqueness: true,
                    length: { minimum: 5 }

    # belongs_to :user
    has_many :comments
end
