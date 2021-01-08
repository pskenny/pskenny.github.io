---
layout: single
title: "Invalid File/Directory Characters"
---

_tldr:_ Valid file/directory names in in different file system bit me when working with filenames programatically.

During work on my music library organiser [Marcin](https://github.com/pskenny/marcin) I came across a problem: invalid characters in directory names.

### The Problem

For the music library organiser I want the directory structure to reflect details of the audio metadata in a `artist/album/title.extension`.

### Research

First we need to find out what is means to be valid. Microsoft provide documentation [Naming Files, Paths, and Namespaces](https://docs.microsoft.com/en-gb/windows/win32/fileio/naming-a-file) which is a great place to start. 

### Solution 1: Naive Removal

I can think of two options for proceding: change or remove. 

Changing invalid characters involves more rules. We can replace `:` with a similar Unicode character, for example a [Mongolian colon](https://unicode-table.com/en/1804/) `᠄`. This type of changing is used to great effect in [fancying up text](https://lingojam.com/FancyTextGenerator) online, as seen in countless Instagram account bio's.

The path of least resistance seems to be a broad removal of invalid characters.

### Solution 1.5 Naive Replacement

### Solution 2: Per Basis

