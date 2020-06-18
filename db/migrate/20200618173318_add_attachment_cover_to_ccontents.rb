class AddAttachmentCoverToCcontents < ActiveRecord::Migration[4.2]
  def self.up
     #add_attachment :contents, :cover
    change_table :contents do |t|
    	t.attachment :cover
    end
  end

  def self.down
    remove_attachment :contents, :cover
  end
end
