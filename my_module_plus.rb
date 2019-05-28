require 'active_support/concern'

module MyModulePlus
  extend ActiveSupport::Concern
  class_methods do
    def my_class_method_plus
      'class method my_class_method_plus'
    end
  end

  included do
    def my_instance_method_plus
      'instance my_instance_method_plus'
    end
  end

end