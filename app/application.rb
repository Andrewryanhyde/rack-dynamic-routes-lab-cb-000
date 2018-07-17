class Application


  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path=="/<ITEM NAME>"
      resp.write "You requested this item"
    else
      resp.write "Page not found"
      resp.status = 404
    end
    resp.finish
  end
end
