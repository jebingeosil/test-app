class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tasks
  has_many :activities

  # Function to get all activities of a user
  def get_all_activities
  	Activity.joins(:task).where(:tasks => { :user_id => current_user.id })
  end

  # Role check
  %w{ 'employee' 'manager'}.each do |role|
  	define_method '#{role}?' do
  	  self.role == role 
  	end
  end
end
