require 'pry'

class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :array


  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe

    @array = [BoardCase.new("A1", "A1").to_hash, BoardCase.new("A2", "A2").to_hash, BoardCase.new("A3", "A3").to_hash, BoardCase.new("B1", "B1").to_hash, BoardCase.new("B2", "B2").to_hash,
      BoardCase.new("B3", "").to_hash, BoardCase.new("C1", "").to_hash, BoardCase.new("C2", "C2").to_hash, BoardCase.new("C3", "C3").to_hash]

        @array[0]["A1"] = "0"
        @array[0]["A2"] = "1"
        @array[0]["A3"] = "2"
        @array[1]["B1"] = "3"
        @array[1]["B2"] = "4"
        @array[1]["B3"] = "5"
        @array[2]["C1"] = "6"
        @array[2]["C2"] = "7"
        @array[2]["C3"] = "8"


  end


  def play_turn(current_player)
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)



    puts "Ou veux tu jouer ?"
    puts "A1 ---- A2 ---- A3"
    puts ""
    puts "B1 ---- B2 ---- B3"
    puts ""
    puts "C1 ---- C2 ---- C3"
    print "> "
    user_choice = gets.chomp

    if user_choice == "A1"
      @array[0]["A1"] = "#{current_player.valeur_player}"

    elsif user_choice == "A2"
      @array[0]["A2"] = "#{current_player.valeur_player}"

    elsif user_choice == "A3"
      @array[0]["A3"] = "#{current_player.valeur_player}"

    elsif user_choice == "B1"
      @array[1]["B1"] = "#{current_player.valeur_player}"

    elsif user_choice == "B2"
      @array[1]["B2"] = "#{current_player.valeur_player}"

    elsif user_choice == "B3"
      @array[1]["B3"] = "#{current_player.valeur_player}"

    elsif user_choice == "C1"
      @array[2]["C1"] = "#{current_player.valeur_player}"

    elsif user_choice == "C2"
      @array[2]["C2"] = "#{current_player.valeur_player}"

    elsif user_choice == "C3"
      @array[2]["C3"] = "#{current_player.valeur_player}"

    end


  end


 def show
  if       @array[0]["A1"] != "0"
    a1 = @array[0]["A1"]
  else a1 = ""
  end
  if       @array[0]["A2"] != "1"
    a2 = @array[0]["A2"]
  else a2 = ""
  end
  if       @array[0]["A3"] != "2"
    a3 = @array[0]["A3"]
  else a3 = ""
  end
  if       @array[1]["B1"] != "3"
    b1 = @array[1]["B1"]
  else b1 = ""
  end
  if       @array[1]["B2"] != "4"
    b2 = @array[1]["B2"]
  else b2 = ""
  end
  if       @array[1]["B3"] != "5"
    b3 = @array[1]["B3"]
  else b3 = ""
  end
  if       @array[2]["C1"] != "6"
    c1 = @array[2]["C1"]
  else c1 = ""
  end
  if       @array[2]["C2"] != "7"
    c2 = @array[2]["C2"]
  else c2 = ""
  end
  if       @array[2]["C3"] != "8"
    c3 = @array[2]["C3"]
  else c3 = ""
  end



   puts "| #{a1} | #{a2} | #{a3} |"
   puts "| #{b1} | #{b2} | #{b3} |"
   puts "| #{c1} | #{c2} | #{c3} |"

 end


  def victory?

    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul

    if (@array[2]["C1"] == @array[2]["C2"] && @array[2]["C2"] == @array[2]["C3"] || @array[1]["B1"] == @array[1]["B2"] && @array[1]["B2"] ==  @array[1]["B3"] || @array[0]["A1"] == @array[0]["A2"] && @array[0]["A2"] == @array[0]["A3"])


      puts "C'est win en horizontal !"
      return true

    elsif (@array[0]["A1"] == @array[1]["B1"] && @array[1]["B1"] == @array[2]["C1"] || @array[0]["A2"] == @array[1]["B2"] && @array[1]["B2"]== @array[2]["C2"] || @array[0]["A3"] == @array[1]["B3"] && @array[1]["B3"] == @array[2]["C3"])
      puts "c'est win en vertical"
      return true

    elsif (@array[0]["A1"] == @array[1]["B2"] && @array[1]["B2"] == @array[2]["C3"] || @array[0]["A3"] == @array[1]["B2"] && @array[1]["B2"] == @array[2]["C1"])
      puts "C'est win en diago !"
      return true

    elsif @array[0]["A1"] != "0" && @array[0]["A2"] != "1" && @array[0]["A3"] != "2" && @array[1]["B1"] != "3" && @array[1]["B2"] != "4" && @array[1]["B3"] != "5" && @array[2]["C1"] != "6" && @array[2]["C2"] != "7" && @array[2]["C3"] != "8"
      puts "Egalité !!"
      return true

    else
      return false

    end
  end

end
