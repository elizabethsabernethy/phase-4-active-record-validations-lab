class Post < ApplicationRecord
validates :title, presence: true
validates :content, length: {minimum: 250}
validates :summary, length: {maximum: 250}
validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
validate  :wont_believe

def wont_believe
    unless title && title.match?(/Won't Believe/)
        errors.add(:title, "Must include 'Won't Believe' in the title")
    end
end
end
