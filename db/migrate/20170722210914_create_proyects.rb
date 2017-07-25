class CreateProyects < ActiveRecord::Migration
  def change
    create_table :proyects do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :file

      t.timestamps
    end
  end
end
