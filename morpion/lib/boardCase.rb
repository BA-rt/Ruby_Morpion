require 'pry'

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
attr_accessor :position, :valeur

  def initialize(position, valeur)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    #
    @position = position
    @valeur = valeur

    # self.hash = {position => valeur}
  end

  def to_hash

    my_hash = {position => valeur}

  end


# binding.pry

end
