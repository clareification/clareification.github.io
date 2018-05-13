---
title: A semi-coherent summary of set theory
author: Clare
slug: Or why math really really needs rules
---

Math is a bit like day dreaming. One asks "what if?" and then goes from there, following a path of reasoning that often passes through surreal and sometimes seemingly nonsensical territory to (hopefully) arrive at some deep theorem or insight into the nature of an object. 

Many people have a peculiar notion that mathematics is meant to describe the real world, but this couldn't be further from the truth. Yes, some parts of mathematics allow us to describe and model natural phenomena, but this is hardly due to the nature of math. It's not what math is *meant* to do. Rather, mathematics is about finding relationships between things and pushing ideas to their theoretical limits, and every once and a while it just so happens that the things you discover happen to describe something in physics, or biology or chemistry or economics or some other field that would at first glance appear to be far flung from the rigor of math. \footnote{This is not to belittle applied mathematics, which throws away all of the "abstract nonsense" of pure math and just focuses on the parts of mathematics that actually matter (to most people in the real world). If you agreed with that definition sans parentheses, you probably shouldn't read the rest of this blog post because you'll find it terribly boring}

This blog post is not about that kind of math. This blog post is about the kind of math that even pure mathematicians sometimes criticize as being too abstract to ever be useful. This is a post about set theory.

Sets, or collections of things, are a cornerstone of life. Just now, I'm drinking a collection of atoms (mostly hydrogen and oxygen) from a cup-shaped object on my table. Now suppose I want to think about sets a bit more formally. Then I'll want to lay down some rules that these things should follow. 

Hold up a second, why do I need rules? Why can't we just say "A set is a collection of objects" and be done with it?

Well, we could. But as Bertrand Russel pointed out, we'd end up with a nasty paradox, and mathematicians tend to dislike those.

Russell's paradox goes as follows: we say that sets are just things that contain other things. So then a set is a thing, which means sets can contain other sets. Furthermore, under this definition there's nothing stopping a set from containing itself. This might seem a bit unintuitive at first, but we can define things that contain themselves all the time in programming languages. For example, consider the following python code:

```python
a = [1,2,3];

a[2] = a;

print(a);

>>> [1,2,[...]]
```
a is an array that contains the elements 1, 2, and a. This is perfectly valid computer code. So why do we run into an issue with sets?

To see where the issue arises, try to define "the collection of all sets that don't contain themselves". OK, this is a collection of things so it's a set. But does it belong to itself? I'll let you work that out. 

So to avoid that messiness, we really will need a few axioms to specify when a collection of objects is a 'set'. For starters, we won't let sets be members of themselves. We also want to be able to say whether two sets are equal, so we'll use the obvious definition that two sets are equal if and only if any member of one set is a member of the other set. Now, we also want to be able to pair sets together, to take unions, and to take power sets (the powerset of a set A is the set whose elements are all the subsets of A). We'll also need the following;

Comprehension: given a set A and a logical formula $\phi$, there exists a set B whose elements are all of the elements of A which satisfy $\phi$. For example, if I have a collection of cups and I pick all of the red ones, then the collection of red cups should also be a set.

Replacement: if I have a set A and function whose domain contains A and maps A to a set B, then there exists a set whose elements are the images of the elements of A.

Infinity: infinite sets exist (this isn't the formal definition but it'll do for now)

Now, if I have a set M whose elements satisfy all of these rules, then I'll call M a model of ZF set theory. Because of Godel's miscellaneous (in)consistency results, we can't actually prove from the ZF axioms alone that ZF has a model. We'll assume from here on out that a model exists, because otherwise I wouldn't have anything to talk about for the rest of the blog post.

OK, so we've formalized the idea of what it means to be a set. My since I've already sort of covered cardinalities in a previous blog post (and if that explanation isn't satisfying there are lots of other resources on the internet that will happily explain it to you), my next set theory post will cover large cardinals, very large cardinals, and the continuum hypothesis.