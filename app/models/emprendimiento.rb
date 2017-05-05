class Emprendimiento < ActiveRecord::Base
	has_attached_file :portada, styles: {medium: "1280x720", thumb:"800x600"}
	validates_attachment_content_type :portada, content_type: /\Aimage\/.*\Z/

	has_attached_file :logo, styles: {medium: "800x600", thumb:"300x200"}
	validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

	has_attached_file :producto1, styles: {medium: "800x600", thumb:"300x200"}
	validates_attachment_content_type :producto1, content_type: /\Aimage\/.*\Z/
end
