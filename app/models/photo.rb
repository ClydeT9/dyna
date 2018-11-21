class Photo < ActiveRecord::Base
    belongs_to :projet
    
    has_attached_file :image, :styles => { :medium => "300x300>",:large =>"1200x1200>", :thumb => "100x100>" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/ 
end