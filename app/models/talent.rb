class Talent < ActiveRecord::Base

  validates_presence_of :first_name, :last_name, :status, :talent_type, :talent_image

  has_attached_file :talent_image, styles: {
                                    :thumb => '260x170!'
                                }
  validates_attachment_content_type :talent_image, :content_type => /\Aimage/
  validates_attachment_file_name :talent_image, :matches => [/png\Z/, /jpe?g\Z/]
  validates_attachment_size :talent_image, :less_than => 2.megabytes
  def status_enum
    ["Attached","Interested","None"]
  end
  def talent_type_enum
    ["Director","Actor","Writer","Composer","Cinematographer","Producer"]
  end
end
