require 'rails_helper'

RSpec.describe User, :type => :model do

  it 'is invalid without email' do
    user = User.new(email: nil)
    expect(user).to be_invalid
  end

  it 'is invalid without a valid email adress' do
    user =  User.new(email: 'foo')
    expect(user).to be_invalid
    user.email =  'foo@example.com'
    expect(user).to be_valid
  end

end
