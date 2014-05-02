require 'spec_helper'

describe Url do
  it 'should respond to link and random_string' do
    url = Url.create(link: "https://www.google.com", random_string: 'abcdefg')
    url.should respond_to(:link)
    url.should respond_to(:random_string)
  end
end
