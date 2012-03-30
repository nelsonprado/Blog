class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :autor
      t.text :conteudo
      t.references :post

      t.timestamps
    end
    add_index :comentarios, :post_id
  end
end
