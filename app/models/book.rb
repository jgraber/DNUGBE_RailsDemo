class Book < ActiveRecord::Base
  attr_accessible :description, :isbn, :title, :authors_attributes

  has_many :authorships
  has_many :authors, :through => :authorships
  accepts_nested_attributes_for :authors, :reject_if => lambda { |a| a[:lastname].blank? }, :allow_destroy => true

  attr_accessible :cover
  has_attached_file :cover, :styles => { :medium => "200x200>", :thumb => "75x75>" }
end
