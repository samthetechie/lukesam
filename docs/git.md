Git 
===

Scripts
=======

git.sh
------
speeds up simple commits by chaining together add, commit and push commands in bash.

$ cat git.sh
#!/bin/bash
read -p "Commit description: " desc
git add . && \
git add -u && \
git commit -m "$desc" && \
git push
$ alias
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias g='~/lukesam/./git.sh'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
$ g
Commit description: some message
# On branch master
nothing to commit (working directory clean)
samthetechie@babbage:~/lukesam$ 



Cheatsheet
==========
source: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet


markdown
========

Headers
------

# H1
## H2
### H3
#### H4
##### H5
###### H6

Alternatively, for H1 and H2, an underline-ish style:

Alt-H1
======

Alt-H2
------

Lists
-----
1. First ordered list item
2. Another item
  * Unordered sub-list. 
  1. Actual numbers don't matter, just that it's a number
    1. Ordered sub-list
    4. And another item.  
       
          Some text that should be aligned with the above item.

          * Unordered list can use asterisks
          - Or minuses
          + Or pluses

Emphais
-----
Emphasis, aka italics, with *asterisks* or _underscores_.

Strong emphasis, aka bold, with **asterisks** or __underscores__.

Combined emphasis with **asterisks and _underscores_**.

Links
-----
There are two ways to create links.

[I'm an inline-style link](https://www.google.com)

[I'm a reference-style link][Arbitrary case-insensitive reference text]

[You can use numbers for reference-style link definitions][1]

Or leave it empty and use the [link text itself][]

Some text to show that the reference links can follow later.

[arbitrary case-insensitive reference text]: https://www.mozilla.org
[1]: http://slashdot.org
[link text itself]: http://www.reddit.com

Images
-----
Here's our logo (hover to see the title text):

Inline-style: 
![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")

Reference-style: 
![alt text][logo]

[logo]: https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 2"

https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
