class Application
  def call
    resp = Rack::Response.new
    runtime = time.hour
    resp.write "#{runtime}"

    if runtime < 12:00pm
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
