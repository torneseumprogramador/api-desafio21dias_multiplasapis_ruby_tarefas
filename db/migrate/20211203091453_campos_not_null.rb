class CamposNotNull < ActiveRecord::Migration[6.1]
  def change
    change_column :situacoes, :nome, :string, null: false
    
    change_column :tarefas, :id_evento, :bigint, null: false
    change_column :tarefas, :titulo, :string, null: false
    change_column :tarefas, :data_criacao, :datetime, null: false
    change_column :tarefas, :data_atualizacao, :datetime, null: false
  end
end
