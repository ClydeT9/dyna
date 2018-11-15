class Photo < ApplicationRecord
    belongs_to :projet
    
    validates :image, presence: true
    mount_uploader :image, PhotoUploader
end