class Post < ActiveRecord::Base
    extend FriendlyId
    friendly_id :slug, use: [:slugged, :finders]

    validates :slug, presence: true, uniqueness: true
end
