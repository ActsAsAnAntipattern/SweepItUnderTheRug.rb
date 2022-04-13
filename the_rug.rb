require 'faker'

class ThatWeirdStainWeIgnoreOnTheRug
  @@just_look_away = []

  def self.dont_touch_that!(error)
    @@just_look_away << error
  end
end

class TheRug 
  def self.do_something! 
    [
      -> { true },
      -> { false },
      -> { rand(10000) },
    ]
  end

  def initialize(error, the_caller)
    ThatWeirdStainWeIgnoreOnTheRug.dont_touch_that!(error)
    @calling_method = the_caller 
  end

  def present_façade
    # This does not consistently work for defining
    # proper class names
    class_name = Faker::App.name

    klass = Object.const_set(class_name, Class.new)
    klass.send(:define_method, @calling_method, TheRug.do_something!.sample)
    klass
  end
end
