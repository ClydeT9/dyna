class Photo < ActiveRecord::Base
    belongs_to :projet
    
    has_attached_file :image, :styles => { :medium => "1600x1600>",:little =>"300x300>", :thumb => "100x100>" }                               
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/ 
  end