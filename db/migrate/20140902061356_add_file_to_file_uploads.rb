class AddFileToFileUploads < ActiveRecord::Migration
  def change
    add_column :file_uploads, :file, :string
  end
end
