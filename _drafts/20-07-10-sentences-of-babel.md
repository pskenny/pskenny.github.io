---
layout: single
title: "Sentences Of Babel: A Combinatorial Problem"
---

__tldr:__ Inspired by a [YouTube video](https://youtu.be/sfXn_ecH5Rw) and a [book](https://en.wikipedia.org/wiki/The_Library_of_Babel), I wanted to know what it would be like to make every variation of a sentence (_kinda_).

- [0. Defining Our Problem](#0-defining-our-problem)
- [1. Math-iness](#1-math-iness)
- [2. Storage](#2-storage)
- [3. What I Left Out](#3-what-i-left-out)
- [4. A Different Approach](#4-a-different-approach)
- [5. See Also/Notes](#5-see-alsonotes)

### 0. Defining Our Problem

Let's decide the boundaries of the problem we want to solve.

1. How many letters/punction/symbols/glyphs/characters/etc will we use? (More technically, what [alphabet](https://en.wikipedia.org/wiki/Alphabet_(formal_languages)) we're using)
2. How long do we make the sentences?

Using what the Library Of Babel used (all lowercase English letters, space, full-stop and comma): "_a_", "_b_", "_c_", ... "_z_", " ", "_._" and "_,_". That makes 29. I'll refer to these from now on as our _alphabet_.

I will [assume](https://strainindex.wordpress.com/2008/07/28/the-average-sentence-length/) an average sentence is 20 words at 5.67 letters. That's 113 letters, which is still a lot. I'll write a very short one sentence note and see how long it is:

> Gone to the shop - Paul

That's 23 letters and it seems like an okay length to try out.

### 1. Math-iness

Letters: "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "x", " ", "," and ".".

We can think of these letters occupying 23 boxes. For each box there is 29 options that it can be in it. That means there are 29 ^ 23 (29 multiplied by itself 23 times) combinations.

This is a huge number. [4316720717749415770740818372739989](https://www.wolframalpha.com/input/?i=29%5E23) (about 4 decillion). There are [3.28x10^80](https://www.popularmechanics.com/space/a27259/how-many-particles-are-in-the-entire-universe/) particles in the observable universe.

These are unimaginable numbers and in short order we've found the surfacely reasonable boundaries of the problem create enough answers to fill the universe.

### 2. Storage

We can calculate how much memory it would store: bytes needed to store a 23 character sentence multiplied by how many sentences.

A char in C is 8 bits (1 byte). A terabyte is 1x10^12 bytes.

Divide the two and you get 1.5671259x10^58 terabytes of data. Excluding metadata if you were to save it to memory.

In 2011, the world had an [estimated storage capacity](https://www.zdnet.com/article/what-is-the-worlds-data-storage-capacity/) of 235 exabytes.

Divide that by our number:

But information can be put in different media. Generating this in a computer just stores it in a sequence of 0's and 1's. What about hypothetical DNA?

### 3. What I Left Out

- The time to store the sentences.
- The cost. Costs change too much, limiting this far to locally in time by calculating that measure.
- The variations would include both gibberish, death threats including your name, positive affirmations, haikus, and literally anything else you can write with our alphabet.

### 4. A Different Approach

The previous things stated kinda leads you to think about creating all the variations and storing them and _only then_ viewing them but we have another option. Since we can find how many variations there are and know how long they are; what about this: we create the variations as you view them. You can compute what variations should be on the page your open and once opened it creates and shows them.

This is the difference between a book. Preprinted with all information stored available for retrieval. The second option is more like a magic book where it is only when you open a page do you see what's on it and once closed it disappears.

What about only making a sentence when we ask for it and checking if it's created? If it has been created before, start again. If not, view and store it.

Now we're creating more problems for ourself. Generating a random sentence isn't the hard part but if we have one repository of all the previously made ones we run into our storage problem.

### 5. See Also/Notes

- Check out the [YouTube video](https://youtu.be/sfXn_ecH5Rw) and the [book](https://en.wikipedia.org/wiki/The_Library_of_Babel).
