FizzBuzz
-------------

![fizz buzz](fizzbuzz.png?raw=true)

<br/>

## Task 0 - Watch "Code Smells and Feels" by Jenny Bryan

At the 2018 UseR conference, Jenny Bryan gave a keynote lecture titled "Code Smells and Feels", a video of this lecture is available on [youtube](https://www.youtube.com/watch?v=7oyiPBjLAWY) and a repo containing the slides and related materials is on [github](https://github.com/jennybc/code-smells-and-feels).

This talk is a wonderful introduction into what good R code should look like as well as the process of refactoring existing code to improve its overall quality. I strongly recommend that you watch as much of the talk as possible (at the very least her slides are worth skimming through)

<br/>

## Task 1 - Re-Implement FizzBuzz

Your tasks for this assignment is to revise your original implementation(s) of `fizzbuzz` into a single clean / elegant / readable implementation. (Almost) all of the requirements for the `fizzbuzz` function from hw0 still apply (see Requirements section below) with the additional requirement that your implementation now **must** make use of the additional material we have covered in Lecture 4 (i.e. you *must* use R's S3 object system in your solution). Additionally, I highly recommend adopting the relevant suggestions Jenny made in her talk to improve and streamline your implementation.

In other words, your `fizzbuzz` function must now be implemented as

```r
fizzbuzz = function(v) {
  UseMethod("fizzbuzz")
}
```

and you and your team should now implement the additional methods necessary to make this work. The goal is to create a clean, readable, and efficient implementation - you will be evaluated on all of these criteria. 

A few guidelines to keep in kind:
* Avoid doing unnecessary checks - e.g. integer values cannot be infinite
* Avoid redundancy where ever possible
* Move whatever you can out of a loop (vectorized approaches will almost always be faster)

You must include a brief write up detailing your implementation using S3, i.e. if we hide all of your code the write up should be sufficient for us to understand your implementation.

<br/>

## Task 2 - FizzBuzz validation

The test cases from hw0 have been included, you should extend these test cases by adding at least 2 good cases and 2 bad cases to the included code chunks. These cases should be clearly distinct from the included cases and each other (e.g. testing for a error with `c("A", "B")` is not meaningfully different from the existing `"A"` test case.)

You must include a brief write up in each section describing the test cases you have added.

<br/>

## FizzBuzz requirements

* Your function must be named `fizzbuzz` and take a single argument named `input`.
* Input must be a numeric vector (either double or integer type)
* ~~Your implementation must use a `for` loop~~
* If input is double type then all values must be coercible to integer without rounding or truncating (i.e. 5 or 5.0 are valid but 5.1 is not)
* All input values must be >=0
* All input values must be finite
* An invalid input values should immediately result in an appropriate error message
* Returned vector should always have a character type (even if none of the input values are divisible by 3 or 5)
* All error messages must be informative (see [tidyverse style guide on error messages](https://style.tidyverse.org/error-messages.html))
* Your implementation must use S3