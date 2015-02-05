class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true
  validates :content, presence: true
  validates :slug, presence: true, uniqueness: true

  has_and_belongs_to_many :tags
  accepts_nested_attributes_for :tags, allow_destroy: true

  paginates_per 5
  
  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end
end
