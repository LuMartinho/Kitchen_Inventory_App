class Accessory < ApplicationRecord
  
  has_attached_file :image, styles: { large: "650x434", medium: "250x250>", small: "50x50>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
