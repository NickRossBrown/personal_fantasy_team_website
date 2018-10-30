class Post < ApplicationRecord
     belongs_to :user
     acts_as_votable
     belongs_to :week
end
