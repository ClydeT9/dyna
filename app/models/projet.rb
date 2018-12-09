class Projet < ActiveRecord::Base
    has_many_attached :images
    belongs_to :category
    
    def thumbnail input
        return self.images[input].variant(resize: '200x200>').processed
    end
    def medium input
        return self.images[input].variant(resize: '200x200!').processed
    end
    def large input
        return self.images[input].variant(resize: '800x800!').processed
    end
end