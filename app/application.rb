class Application


  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/<ITEM NAME>"
      resp.write "You requested this item"
      resp.write "The price is £3.42"
    else
      resp.write "Route not found"
      resp.status = 400
    end
    resp.finish
  end
end
