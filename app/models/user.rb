class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = %w{ employee manager }

  has_many :tasks
  has_many :activities

  # Role check
  ROLES.each do |role|
    define_method("is_#{role}?") do
      self.role == role 
    end
  end

  # Function to get all activities of a user
  def get_all_activities
  	Activity.joins(:task).where(:tasks => { user_id: self.id })
  end
end
