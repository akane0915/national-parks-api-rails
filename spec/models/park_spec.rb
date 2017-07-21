require 'rails_helper'

describe Park do
  it { should validate_presence_of :name }
  it { should validate_presence_of :sq_miles }
  it { should validate_presence_of :state }
  it { should validate_presence_of :year}
  it { should validate_presence_of :fauna}
end
