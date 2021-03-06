class Content < ApplicationRecord
	belongs_to :user
	has_attached_file :cover
  	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/,
  	message: "Solo le immagini sono supportate"

  	has_attached_file :allegato
  	validates_attachment_content_type :allegato, :content_type => [ /^image\/(png|gif|jpeg)/,'application/msword'],
  	message: "Formato non supportato"
end
