class RemoveImageShit < ActiveRecord::Migration
  def change
  remove_column :countries, :image_file_name 
  remove_column :countries, :image_content_type 
  remove_column :countries, :image_file_size 
  remove_column :countries, :image_updated_at 
  end
end
