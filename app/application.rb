require 'pry'
class Application
  def call(env)

    resp = Rack::Response.new

    runtime = Time.now

    resp.write "The time is now: #{runtime}\n"

    if runtime.hour <= 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
