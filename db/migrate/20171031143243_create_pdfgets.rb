class CreatePdfgets < ActiveRecord::Migration[5.1]
  def change
    create_table :pdfgets do |t|
      t.string :attachment
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
