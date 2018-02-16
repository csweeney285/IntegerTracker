Write a class IntegerTracker with these methods:

track(int) - Receives an integer for tracking.
get_max() - Returns the max (int) of all integers seen so far.
get_min() - Returns the min (int) of all integers seen so far.
get_mean() - Returns the mean (float) of all integers seen so far.
get_mode() - Returns the mode (most frequent) (int) of all integers seen so far.

Ensure each method, including track, runs in constant time (O(1) time complexity). You may assume track will be called at least once. State any other assumptions you make in your solution.

For example, in ruby:
integer_tracker = IntegerTracker.new()
integer_tracker.track(1)
integer_tracker.track(0)
integer_tracker.get_max() # => 1
integer_tracker.get_min() # => 0
integer_tracker.get_mean() # => 0.5
integer_tracker.get_mode() # => 1 (1 or 0 is acceptable)
integer_tracker.track(3)
integer_tracker.track(1)
integer_tracker.get_max() # => 3
integer_tracker.get_min() # => 0
integer_tracker.get_mean() # => 1.25