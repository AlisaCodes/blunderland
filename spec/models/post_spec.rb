require 'rails_helper'

describe Post do
  it { should validate_presence_of :name }
  it { should validate_presence_of :title }
  it { should validate_presence_of :story }
  it { should validate_presence_of :url }
  it { should have_and_belong_to_many :tags}
end
