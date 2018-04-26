class Publication < ApplicationRecord
  belongs_to :user

  mount_uploader :image, ImageUploader
  has_many :comments
  # validates_processing_of :image
  validate :image_size_validation

  def change_principal
  	puts  self.id.to_s + "  Esta sera la nueva principal" + self.subtitle
  	Publication.where.not(:id => self.id).update_all(principal: false)
  end

  private
    def image_size_validation
      errors[:image] << "should be less than 2 MB" if image.size > 2.megabytes
    end
end
