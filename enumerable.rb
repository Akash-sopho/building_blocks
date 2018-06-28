module Enumerable
  def my_each
    for element in self do yield element end
    self
  end

  
