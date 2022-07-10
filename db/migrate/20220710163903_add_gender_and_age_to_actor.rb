class AddGenderAndAgeToActor < ActiveRecord::Migration[7.0]
  def change
    add_column :actors, :gender, :string
    add_column :actors, :age, :integer # Don't "gotcha" me, pal, I did it right the first time
  end
end
