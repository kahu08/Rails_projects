require 'rails_helper'
require 'news'
describe News do
   it { should validate_presence_of :information }
   it { should have_many :comments }
 end
