class PushController < ApplicationController
  protect_from_forgery :except => :create

  def create
    File.open("/tmp/#{Time.now.to_i}.feed", "w+") {|f| f.write(request.body.read)}
    head :ok
  rescue Exception => e
    head :ok
  end
end
