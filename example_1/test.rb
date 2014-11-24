autoload :User, './user.rb'

f = Fiber.new do
  p User
end
f.resume
f.resume
