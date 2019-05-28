require 'active_support/concern'

module MyModule extend ActiveSupport::Concern
  class_methods do
    def my_class_method
      p ">> self: #{self} class: #{self.class.name} method: #{__method__.to_s}"
    end
  end

  included do
    def my_instance_method
      p ">> self: #{self} class: #{self.class.name} method: #{__method__.to_s}"
    end
  end

end