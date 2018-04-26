class CreatePublications < ActiveRecord::Migration[5.1]
  def change
    create_table :publications do |t|
      t.string :subtitle
      t.text :description

      t.timestamps
    end
  end
end
