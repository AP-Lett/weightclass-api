class AddAgeAndGenderToWrestlers < ActiveRecord::Migration[8.0]
  def change
    add_column :wrestlers, :age, :integer
    add_column :wrestlers, :gender, :string
  end
end
