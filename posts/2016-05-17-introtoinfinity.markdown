--------------------------------------------
title: A gentle introduction to infinities
author: Clare
slug: Yes, plural.
--------------------------------------------

When I was five years old, I learned how to tie my shoes. With a bit of practice, I could get the rabbit around the tree and through the hole with my eyes closed. Heck, I even perfected the coveted *double bow*. Despite this apparent mastery of the art of shoe-tying, if you'd asked me at that age why that particular set of movements resulted in a structure that could both look pretty and keep my shoes from falling off, I wouldn't have had the faintest clue of how to answer you. It was only a decade later, armed with an understanding of high school physics and geometry, that I finally grasped the properties of the universe that I'd made use of for so many years.

The same can be said for infinity. I learned the word and the symbol in elementary school. Infinity was the thing you said when something was really really really big and you didn't want to say "really" that many times. Plus, it made grown-ups think that I was precocious. It wasn't until high school and university that I began to think more deeply about it.

Computer scientists frequently find themselves dealing with such unfathomably large numbers, and indeed many concepts in theoretical computer science -- in particular, the analysis of algorithmic complexity -- rely on taking limits as the size of the input to a problem becomes infinitely large. Yet too often the subject of size is approached in a hand-wavey way that leaves a slight distaste in the mouth of a student in mathematics. Computer science students, it seems, often find themselves forging ahead without first checking whether their mathematical shoes are securely fastened. In this post, I'll attempt to make some small attempt at remedying this worrying trend, and try to explain one small facet of the concept of infinity.

I'll start with FizzBuzz, the classic programming interview question. Loop through a set of numbers. If a number is divisible by 3, print "Fizz". If it's divisible by 5, print "Buzz". 
