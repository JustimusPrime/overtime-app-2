class Post < ApplicationRecord
  belongs_to :user
  validates_presence_of :date, :rationale
end



# belongs_to :user, optional: true