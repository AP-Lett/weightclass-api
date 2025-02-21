class CreateWeightClasses < ActiveRecord::Migration[8.0]
  def change
    create_table :weight_classes do |t|
      t.integer :wc

      t.timestamps
    end
  end
end
