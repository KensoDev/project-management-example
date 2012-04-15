class Todo < ActiveRecord::Base
  validates_presence_of :title
  has_many :comments, :as => :item
end