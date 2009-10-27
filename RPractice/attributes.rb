class Module
  def attr_accesor(*symbols)
    symbols.each do |symbol|
      class_eval %{
        def #{symbol}
          @#{symbol}
        end
        def #{symbol}=(val)
          @#{symbol} = val
        end}
    end
  end
  def printable_attribute(attr)
    class_eval %{
      def p_#{attr}
        puts attr.to_S
      end
    }
  end
end

class Printer
  attr_accessor :name
  printable_attribute :name
end

my_p = Printer.new
my_p.name = "LaserPrint 5000"
my_p.p_name