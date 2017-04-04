class Message < ActiveRecord::Base
  before_create :send_message

  private
  def send_message
    response = RestClient::Request.new(
    :method => :post,
    :url =>'https://api.twilio.com/2010-04-01/Accounts/AC43de00cc78565a8ccd9d3adc58086f74/Messages.json',
    :user =>'AC43de00cc78565a8ccd9d3adc58086f74',
    :password =>'72b8e30b4749e3fd0e5a04be4ad0cbd9',
    :payload => {:Body => body, :To => to,:From =>from}


    ).execute
  end
end
