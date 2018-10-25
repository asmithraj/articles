class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
   	def up
   		create_table :distributors do |t|
      	t.string :zipcode
    end
  end
end
