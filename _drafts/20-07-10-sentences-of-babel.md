---
layout: post
title: "Sentences Of Babel: Absurd Conclusions Of A Combinatorial Problem"
---

_tldr:_ What would it look like to write every possible combination of short sentence? 

- [0. ⬛ Defining Our Problem Boundaries](#0--defining-our-problem-boundaries)
  - [0.1. 🔤 How Many Letters](#01--how-many-letters)
  - [0.2. 🔢 How Long Is A Sentence?](#02--how-long-is-a-sentence)
- [1. ✖️ Math-iness](#1-️-math-iness)
- [2. 💽 Storage](#2--storage)
- [3. … What I Left Out](#3--what-i-left-out)
- [4. 💬 An Other Approach](#4--an-other-approach)
- [5. 🗒️ See Also/Notes](#5-️-see-alsonotes)

Inspired by a [YouTube video](https://youtu.be/sfXn_ecH5Rw) and a [book](https://en.wikipedia.org/wiki/The_Library_of_Babel), I wanted to know what it would be like to make every variation of every sentence (kinda). Let's explore that.

### 0. ⬛ Defining Our Problem Boundaries

I can think of two things to decided before we start:

1. How many letters/punction/symbols/glyphs/characters/etc are we gonna use? I.e. what is the [alphabet](https://en.wikipedia.org/wiki/Alphabet_(formal_languages)) we're using?
2. How long do we make the sentences?

#### 0.1. 🔤 How Many Letters

I'm deciding on using what the Library Of Babel used; all lowercase English letters, space, full-stop and comma: "_a_", "_b_", "_c_", ... "_z_", " ", "_._" and "_,_". That makes 29. I'll refer to these from now on as our alphabet.

#### 0.2. 🔢 How Long Is A Sentence?

From [this page](https://strainindex.wordpress.com/2008/07/28/the-average-sentence-length/) I'm gonna say an average sentence is 20 words at 5.67 letters. That's 113 letters. That's still a lot of letters. Let's write a small sentence like one you'd write before leaving the house to go to the store:

"Gone to the shop to get milk and eggs -Paul"

That's 44 letters long. Pretty short for a sentence.

### 1. ✖️ Math-iness
Letters: a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, x,  , , and .. 

We can think of these letters occupying 44 cells or boxes. For each cell there is 29 options that it can have. That means all the variations is 29 ^ 44 (29 multiplied by itself 44 times).

This is a huge number. 2.2157048x10^64. There are [3.28x10^80](https://www.popularmechanics.com/space/a27259/how-many-particles-are-in-the-entire-universe/) particles in the observable universe. 

These are unimaginable numbers.

### 2. 💽 Storage

We can calculate how much memory it would store: bytes needed to store a 44 character sentence multiplied by how many sentences.

A char in C is 8 bits (1 byte). A terabyte is 1x10^12 bytes.

Divide the two and you get 1.5671259x10^58 terabytes of data. Excluding metadata if you were to save it to memory. 

In 2011, the world had an [estimated storage capacity](https://www.zdnet.com/article/what-is-the-worlds-data-storage-capacity/) of 235 exabytes.

Divide that by our number:

But information can be put in different media. Generating this in a computer just stores it in a sequence of 0's and 1's. What about hypothetical DNA? 

### 3. … What I Left Out

The time to store

The cost. Costs change too much, limiting this far to locally in time by calculating that measure.

### 4. 💬 An Other Approach

What about only making a sentence when we ask for it and checking if it's created? If it has been created before, start again. If not, view and store it.

Now we're creating more problems for ourself. Generating a random sentence isn't the hard part but if we have one repository of all the previously made ones we run into our storage problem.

### 5. 🗒️ See Also/Notes
 - Check out the [YouTube video](https://youtu.be/sfXn_ecH5Rw) and the [book](https://en.wikipedia.org/wiki/The_Library_of_Babel).
