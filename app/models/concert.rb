class Concert < ActiveRecord::Base
    extend FriendlyId
    friendly_id :name, use: :slugged

    validates :name, presence: true
    validates :show_at, presence: true
    validates :city, presence: true
    validates :country, presence: true
    validates :postal_code, presence: true
    validates :street, presence: true
    validates :slug, presence: true, uniqueness: true

    def should_generate_new_friendly_id?
      slug.blank? || name_changed?
    end
end
