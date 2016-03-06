class Logician < ActiveRecord::Base

  has_attached_file :drawing,
    styles: { large: "600x600#", medium: "300x300#", thumb: "100x100#" },
    default_url: ":style_missingdrawing.png"
  validates_attachment_content_type :drawing, content_type: /\Aimage\/.*\Z/

  has_attached_file :photo,
    styles: { large: "600x600#", medium: "300x300#", thumb: "100x100#" },
    default_url: ":style_missingphoto.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
