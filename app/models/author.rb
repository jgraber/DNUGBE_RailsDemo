class Author < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :twitter

  has_many :authorships
  has_many :books, :through => :authorships
end
