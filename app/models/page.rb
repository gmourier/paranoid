class Page < ActiveRecord::Base
    extend FriendlyId
    friendly_id :title, use: :slugged

    validates :title, presence: true
    validates :content, presence: true
    validates :slug, presence: true, uniqueness: true

    def should_generate_new_friendly_id?
      slug.blank? || title_changed?
    end
end
