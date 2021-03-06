
class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now

    if time.hour < 12
      resp.write "Good Morning!"
    elsif time.hour == 12 && time.minute == 0
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
