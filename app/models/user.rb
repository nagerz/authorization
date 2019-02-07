class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates_presence_of :password, require: true
  # e.g., User.authenticate('penelope@turing.com', 'boom')
  def authenticate(email, password)
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil
    User.find_by(email: email, password: password)
  end


end
