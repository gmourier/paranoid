class Carousel < ActiveRecord::Base
    has_attached_file :cover, :styles => { :large => "1280x720", :thumb => "128x72>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
end
