class CreateDogefacts < ActiveRecord::Migration[6.0]
  def change
    create_table :dogefacts do |t|
      t.text :context

      t.timestamps
    end
  end
end
