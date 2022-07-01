require 'rails_helper'

describe Beast do
  it { should validate_presence_of :daemon }
  it { should validate_presence_of :breed }
end