class Confection
  def bake
    p "Baking at 350 degrees for 25 minutes."
  end 
end

class BananaCake < Confection
end

class Cupcakes < Confection
  def frosting
    p "Apply frosting"
  end
end