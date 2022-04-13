# SweepItUnderTheRug

Unhappy paths are hard, so just ignore them!

## How it Works
SweepItUnderTheRug creates a new exception class that matches any `StandardError`. Define a rescue with `SweepItUnderTheRug` and call `#👀`.

```ruby
def detect_alien_invasion
  if anything_out_there?
    notify_csa
    notify_nasa 
    notify_esa
    call_mom
  else
    play('royalty_free_celebration_song.mp4')
  end
rescue SweepItUnderTheRug => e
  e.👀
end
```

The `#👀` will generate a random class. The generated class will have a method of the same name you were trying to call (`#detect_alien_invasion` in this instance). That new method will be invoked and returned as the final value in the method. 

SweepItUnderTheRug's highly sophisticated class generating mechanism will give you a wide range of retrun values. Boolean, integer, quotes, currencies, etc. The best part is it will be different on every invokation.

Problem solved! 
