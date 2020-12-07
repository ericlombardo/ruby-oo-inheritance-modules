require_relative './class_methods_module.rb' 
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'   # include files to have access

class Dancer
  include Dance # imports Dance module for instance methods
  extend MetaDancing  # imports MetaDancing for class methods
  include FancyDance::InstanceMethods # imports InstanceMethods module that is in FancyDance module for instance methods
  extend FancyDance::ClassMethods     # imports ClassMethods module that is in FancyDance module for class methods
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end