class AddImageToProject < ActiveRecord::Migration
  def self.up
    add_attchment :users, :pic
  end

  def self.down
   remove_attchment :users, :pic 
  end
end
