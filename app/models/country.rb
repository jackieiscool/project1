class Country < ActiveRecord::Base
 # validates :email, :length => (:minimum => 4)

 has_attached_file :image
 validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
