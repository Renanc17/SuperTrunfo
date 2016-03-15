class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :url
      t.string :tipo
      t.string :nome
      t.integer :forca
      t.integer :velocidade
      t.integer :habilidade
      t.integer :equipamento
      t.integer :inteligencia

      t.timestamps null: false
    end
  end
end
