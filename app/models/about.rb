class About < ApplicationRecord
    has_many_attached :images

    def thumbnail input
        return self.images[input].variant(resize: '120x120').processed
    end
    def medium input
        return self.images[input].variant(resize: '200x200!').processed
    end
    def large input
        return self.images[input].variant(resize: '1200x1200!').processed
    end
end
