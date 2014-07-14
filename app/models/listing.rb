class Listing < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "200x>", :thumb => "10x10>" }, :default_url => "default.jpg"
	validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
end
