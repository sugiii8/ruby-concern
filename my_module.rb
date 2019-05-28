require 'active_support/concern'
require './my_module_plus'

module MyModule
  extend ActiveSupport::Concern
  include MyModulePlus

  class_methods do
    def my_class_method
      p ">> self: #{self} class: #{self.class.name} method: #{__method__.to_s}"
    end
  end

  included do
    def my_instance_method
      p ">> self: #{self} class: #{self.class.name} method: #{__method__.to_s}"
    end
    def my_instance_method2
      str = my_instance_method_plus
      str += '2'
      p str
    end
  end

end