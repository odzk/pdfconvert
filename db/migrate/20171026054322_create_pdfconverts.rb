class CreatePdfconverts < ActiveRecord::Migration[5.1]
  def change
    create_table :pdfconverts do |t|
      t.string :name
      t.string :status
      t.string :attachment

      t.timestamps
    end
  end
end
