class Dog < Struct.new(:name) 
  def gracie?
    if name == 'Gracie' ||
        name == 'Grace'
      return true
    end
    return false
  end
end
