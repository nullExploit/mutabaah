class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :list1
      t.text :para1
      t.text :para2
      t.text :para3
      t.text :para4
      t.string :list2
      t.text :para5
      t.text :para6
      t.text :para7
      t.text :para8
      t.string :list3
      t.text :para9
      t.text :para10
      t.text :para11
      t.text :para12
      t.string :list4
      t.text :para13
      t.text :para14
      t.text :para15
      t.text :para16
      t.string :list5
      t.text :para17
      t.text :para18
      t.text :para19
      t.text :para20
      t.string :list6
      t.text :para21
      t.text :para22
      t.text :para23
      t.text :para24
      t.string :list7
      t.text :para25
      t.text :para26
      t.text :para27
      t.text :para28
      t.string :list8
      t.text :para29
      t.text :para30
      t.text :para31
      t.text :para32

      t.timestamps
    end
  end
end
