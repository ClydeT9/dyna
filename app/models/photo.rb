class Photo < ActiveRecord::Base
    belongs_to :projet
    
    validates :image, presence: true
    mount_uploader :image, PhotoUploader
end