class Country < ActiveRecord::Base
 # validates :email, :length => (:minimum => 4)
has_attached_file :image, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  
 validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


end
