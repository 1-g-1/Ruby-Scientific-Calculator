require_relative "calculator/version"

module Calculator

  class Calculations

    def calc
      puts "Enter a calculation :\n(Enter 'exit' to quit.)"

      while true
        print ">> "
        str = gets.chomp.split(" ")  # splits into array, rejects blanks
        return if str[0] == 'exit'

        if str[0] == 'sqrt'
          #          require "pry"
          #          binding.pry
          puts Math.sqrt(str[1].to_f)
        end

        if str[0] == 'cos'
          puts Math.cos(str[1].to_f)
        end

        if str[0] == 'sin'
          puts Math.sin(str[1].to_f)
        end

        if str[0] == 'sinh'
          puts Math.sinh(str[1].to_f)
        end

        if str[0] == 'tan'
          puts Math.tan(str[1].to_f)
        end

        if str[0] == 'tanh'
          puts Math.tanh(str[1].to_f)
        end

        operator1 = str[0].to_f
        operator2 = str[2].to_f
        operator = str[1].to_sym

        case operator
        when :+ then puts operator1 + operator2
        when :- then puts operator1 - operator2
        when :* then puts operator1 * operator2
        when :/ then puts operator1 / operator2
        when :% then puts operator1 % operator2

      #  else
      #    puts "invalid input"
        end
      end

    end

#    if __FILE__ == $0     # if run as script, start calc: see http://j.mp/HOTGq8
#      calc
#    end

  end
end
