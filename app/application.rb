require 'pry'
class Application
  def call()
    resp = Rack::Response.new
    runtime = time.hour
    resp.write "The time is now: #{runtime}"

    if runtime <= 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
