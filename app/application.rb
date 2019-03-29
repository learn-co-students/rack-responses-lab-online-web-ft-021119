class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now
    time_now = time.strftime("%k:%M")

    if time_now >= "12"
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
