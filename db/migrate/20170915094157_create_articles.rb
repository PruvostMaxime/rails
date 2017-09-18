class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :titre
      t.string :description
      t.text :contenu
      t.text :auteur
    end
  end
end
