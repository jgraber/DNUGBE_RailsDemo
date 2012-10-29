class Book < ActiveRecord::Base
  attr_accessible :description, :isbn, :title
end
