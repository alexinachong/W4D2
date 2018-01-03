class CreateCatsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.date :birth_date, null: false
      t.string :color, null: false, inclusion: { in: ["red", "green", "blue"],
                                    as: :cat_color }
      t.string :name, null: false
      t.string :sex, null: false, :limit => 1, inclusion: { in: ["M", "F"] }
      t.text :description, null: false
      t.timestamps
    end
  end

  def age
  end

end
