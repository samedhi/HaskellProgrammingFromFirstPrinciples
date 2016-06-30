# Haskell Programming from First Principles

##### A book by Christopher Allen & Julie Moronuki

### What is this?

My solutions to the problems within the book. It is my first real exposure to Haskell, so expect some pretty bad code. Working through these solutions with the [Berkeley Functional Programming](http://www.meetup.com/eastbayfunctionalprogramming/events/232162705/) Meetup group.

Ideally work at the rate of one chapter a week. Often a little behind the group. I work in fits and spurts as I have the time.

All coding is currently being done using ghci:

```
bash-3.2$ ghci --version
The Glorious Glasgow Haskell Compilation System, version 7.10.3
```

Most problems can be loaded using the following pattern:
```
bash-3.2$ cd ch10/
bash-3.2$ ls
chapter.hs	exercise1.hs	exercise2.hs
bash-3.2$ ghci
GHCi, version 7.10.3: http://www.haskell.org/ghc/  :? for help
Prelude> :load exercise1.hs 
[1 of 1] Compiling Exercise1        ( exercise1.hs, interpreted )
Ok, modules loaded: Exercise1.
```
