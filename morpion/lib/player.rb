class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  attr_reader :name, :valeur_player


  def initialize(name, valeur_player)
    #TO DO : doit régler son nom et sa valeur
    @name = name
    @valeur_player = valeur_player
  end

end
