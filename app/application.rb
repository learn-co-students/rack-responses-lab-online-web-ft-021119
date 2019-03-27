require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    # binding.pry
    time = Time.now
    case time.hour
      when 12..24
        then resp.write "Good Afternoon"
      else resp.write "Good Morning"
    end

    resp.finish


  end

end
