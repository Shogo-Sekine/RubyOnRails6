class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.text :title
      t.text :content
      t.text :name
      t.boolean :finished

      t.timestamps
    end
  end
end
