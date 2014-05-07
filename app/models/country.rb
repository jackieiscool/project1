class Country < ActiveRecord::Base
 # validates :email, :length => (:minimum => 4)

 has_attached_file :image

end
