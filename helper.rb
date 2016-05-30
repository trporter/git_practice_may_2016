module HelperMethods
  def random_number
    prng = Random.new
    prng.rand(3.0) < 1.5
  end
end
