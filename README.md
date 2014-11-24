# Two examples to reproduce a fiber issue only with `autoload`

1. Those two examples works on 1.9.3.
2. Those two examples throw an exception `fiber called across stack rewinding barrier (FiberError)` on 2.0+

## Example 1

This is the minimal code to reproduce the problem.

## Example 2

This is a typical usage to trigger the problem.

## Tested with multple ruby versions with multiple active_record versions on both OS X and Ubuntu

## Any help would be appreciated!
