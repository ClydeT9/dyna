class Photo < ApplicationRecord
    belongs_to :projet
    
    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :storage => :cloudinary,
    :path => ':id/:style/:filename'           
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/ 
  end