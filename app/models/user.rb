class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of    :name, :on=>:create
  validates_presence_of    :age, :on=>:create
  validates_presence_of :genderString, :on=>:create
  validate :testCheck, :on=>:create

 
  def genderCheck
    errors.add(:genderString, "Gender not recognized") unless genderString == "Male" || genderString == "Female" || genderString == "male" || genderString == "female"
  end
  def testCheck
    errors.add(:name, "Error, name not hi") unless name != "hi"
  end
end
