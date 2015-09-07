class Talent < ActiveRecord::Base

  def status_enum
    ["Attached","Interested","None"]
  end

  def talent_type_enum
    ["Director","Actor","Writer","Composer","Cinematographer","Producer"]
  end

end
