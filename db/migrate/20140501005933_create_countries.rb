class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :title
      t.boolean :visited

      t.timestamps
    end
  end
end
