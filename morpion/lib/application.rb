
class Application

  def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
    #
    a = Game.new

    flag = false

    while !flag

      flag = a.turn

    end




  end

end
