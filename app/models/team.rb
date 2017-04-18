class Team < ActiveRecord::Base
  belongs_to :sport

  has_attached_file :image, styles: { large: "200x200", medium: "200x200", thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end
end
