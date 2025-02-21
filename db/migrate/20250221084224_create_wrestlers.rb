class CreateWrestlers < ActiveRecord::Migration[8.0]
  def change
    create_table :wrestlers do |t|
      t.string :name
      t.references :weight_class, null: false, foreign_key: true

      t.timestamps
    end
  end
end
