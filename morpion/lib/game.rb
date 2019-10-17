class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :board, :array

  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    puts "Qui jouera les X ?"
    print "> "
    name = gets.chomp
    player_1 = Player.new(name, "X")
    puts "Qui jouera les O ?"
    print "> "
    name = gets.chomp
    player_2 = Player.new(name, "O")
    @array = [player_1, player_2]
    @board = Board.new
    @current_player = player_2
  end

  def turn
    #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
    puts "A " + @current_player.name + " de jouer"
    puts @board.show
    puts @board.play_turn(@current_player)


    if @current_player == @array[1]
      # puts @array[0]
      @current_player = @array[0]

    elsif  @current_player == @array[0]

      # puts @array[1]
      @current_player = @array[1]

    end

    # puts @board.victory?
    # puts @current_player.valeur_player
    return game_end

  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    @board = Board.new
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul

    if @board.victory?

      puts "Voulez Vous recommencer une partie ??   [y/n]"
      print "> "
      user_choice = gets.chomp
      if user_choice == "y"
        new_round
        return false
      else
        puts " AUREVOIR !!"
        return true

      end

    else
      return false
    end

  end

end
