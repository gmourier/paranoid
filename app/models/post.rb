class Post < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: :slugged

    validates :title, presence: true
    validates :content, presence: true
    validates :slug, presence: true, uniqueness: true

    self.per_page = 5
    
    def should_generate_new_friendly_id?
      slug.blank? || title_changed?
    end

end
