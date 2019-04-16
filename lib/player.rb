class Player
  attr_accessor :name , :life_points
  def initialize(name) #initalise le programme
    @life_points =10
    @name = name

  end
  def show_state #affiche le nombre de vie du joueur
     return puts ["#{@name} " + " a #{@life_points} de points de vie "]

  end
  def gets_damage(damage) #reçoit des dgats de niveaux damages
    @life_points = @life_points - damage
    if @life_points ==0 || @life_points <0
      puts "#{@name} est mort"
      return
    end

  end
  def attacks (defenseless_player)
    hit=compute_damage
    puts " #{@name} attaque #{defenseless_player.name}"
    defenseless_player.gets_damage(hit)
    puts "#{@name} a fait un hit combo ,#{defenseless_player} a #{hit} points de vie"

    def compute_damage
      return rand(1..6)
    end

  end
end
