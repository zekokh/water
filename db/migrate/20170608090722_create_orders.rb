class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :shop
      t.string :address
      t.integer :pure_water #сколько отвезти бутолок чистой воды
      t.integer :empty_bottle #пустая бутылка для чистой воды отвезти
      t.integer :empty_bottle_back #сколько забрал пустых бутылок для чистой воды
      t.integer :dirty_bottle #сколько отвезти пустых бутылок для отработки
      t.integer :dirty_bottle_back #сколько забрать бутылок для отработки
      t.string :date_of_completion #когда забрал с домика
      t.string :driver #водитель

      t.boolean :is_completed, default: false #успешно завершена
      t.boolean :is_a_live, default: true #удалена или успешно завершена

      t.timestamps
    end
  end
end
