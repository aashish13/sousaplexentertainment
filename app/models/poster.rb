class Poster < ActiveRecord::Base
  has_attached_file :poster_link, styles: {
                                    :medium => '260x404!'
                                }
  validates_attachment_content_type :poster_link, :content_type => /\Aimage/
  validates_attachment_file_name :poster_link, :matches => [/png\Z/, /jpe?g\Z/]


  validates_attachment_size :poster_link, :less_than => 5.megabytes

end
