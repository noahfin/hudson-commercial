class AddTypesToTouches < ActiveRecord::Migration[5.1]
  def change
    add_column :touches, :type_meeting, :boolean
    add_column :touches, :type_personal, :boolean
    add_column :touches, :type_email, :boolean
    add_column :touches, :type_postcard, :boolean
    add_column :touches, :type_cellphone, :string
    add_column :touches, :type_landline, :boolean
    add_column :touches, :type_flyer, :boolean
    add_column :touches, :type_document, :boolean
    add_column :touches, :type_video_chat, :boolean
    remove_column :touches, :way_of_contact, :string
  end
end
