require 'pry'
require_relative 'the_rug'
require 'faker'

class SweepItUnderTheRug < Exception
  def self.===(e)
    e.define_singleton_method('👀', sweeper)
    true
  end

  def self.sweeper 
    -> {
      SweepItUnderTheRug.new.sweep(
        self,
        caller_locations.first.base_label
      )
    }
  end

  def sweep(error, the_caller)
    rug = TheRug.new(error, the_caller)
    # oh, we fancy
    façade_klass = rug.present_façade
    façade_klass.new.send(the_caller)
  end
end

