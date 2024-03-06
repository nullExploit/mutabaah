class CreateMurojaahs < ActiveRecord::Migration[7.1]
  def change
    create_table :murojaahs do |t|
      t.string :LU
      t.string :LL
      t.string :LW
      t.string :ST
      t.string :SQ
      t.string :SH
      t.string :ZT
      t.string :ZQ
      t.string :ZB
      t.string :AT
      t.string :AA
      t.string :MT
      t.string :MA
      t.string :MB
      t.string :IT
      t.string :IA
      t.string :IB
      t.integer :total_rakaat
      t.integer :total_page
      t.integer :no_surah
      t.integer :grade
      t.integer :user_id

      t.timestamps
    end
  end
end
