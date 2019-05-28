require './my_module'

class Main
  include MyModule

  def test
    p ">> self: #{self} class: #{self.class.name} method: #{__method__.to_s}"

    Main.my_class_method
    my_instance_method
    # my_class_method # <- not instance method
  end
end

Main.new.test