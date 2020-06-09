class Post < ApplicationRecord
    # belongs_to :user
    has_many :comments
    validates :title , uniqueness: true, presence: true, length: {maximum: 50, minimum: 2}
    validates :body, presence:true
end
