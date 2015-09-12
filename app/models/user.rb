class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username,:password

  rails_admin do
    list do
      field :username
      field :first_name
      field :last_name
      field :email
      field :admin
    end

    edit do
      field :username
      field :password
      field :first_name
      field :last_name
      field :email
      field :admin
    end

  end

  def user_type_enum
    ["User","Admin"]
  end

end
