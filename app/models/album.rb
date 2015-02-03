class Album < ActiveRecord::Base
    extend FriendlyId
    friendly_id :name, use: :slugged

    has_attached_file :cover, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/

    validates :name, presence: true
    validates :released_at, presence: true
    validates :description, presence: true
    validates :slug, presence: true, uniqueness: true

    def should_generate_new_friendly_id?
      slug.blank? || name_changed?
    end
end
