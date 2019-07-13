---
layout: post
title: "Execute PowerShell Inline in Sublime Text 2"
date: 2013-02-09 20:58:00 
categories: [Plugins]
tags: powershell sublime-text-2
comments: true
---

[Sublime Text 2] is by far my favourite text editor and I use it to edit/code practically everything. I was working on 
an assignment for my [CSC401H1 Natural Language Computing] course in it when I realized something. It happened when I 
was writing a final discussion text file and I needed to do some calculations.

<!--more-->

One of the set of lines in the discussion file was like this:

    TheOnion
        precision = 429/(429 + 126 + 75 + 79 + 36 + 156) = 47.6%
        recall = 429/(429 + 216 + 63 + 50 + 126 + 115) = 42.9%
    nytimes
        precision = 522/(216 + 522 + 145 + 147 + 94 + 114) = 42.1%
        recall = 522/(126 + 522 + 56 + 79 + 170 + 46) = 52.2%
    torontostarnews
        precision = 197/(63 + 56 + 197 + 131 + 75 + 130) = 30.2%
        recall = 197/(75 + 145 + 197 + 75 + 454 + 54) = 19.7%

I had to manually calculate those percentages using the math expression to the left. Since it was already in text, I 
decided to copy and paste it into [PowerShell] and copy paste the results back into Sublime Text. And that's when it hit
me. There has got to be a more efficient way of doing this. I remembered a friend showing me that [TextMate is able to 
pipe commands] from the shell back into the text file inline. I am not sure if it replaces the highlighted text with the
results of executing it but that's what I envisioned something like this would do. I did some Googling to see if such a
thing existed for Sublime Text. It didn't turn up anything and I think that my bad search engine skills are to blame :( 
but it gave me an opportunity to try making something of my own. Despite the fact that the Sublime Text Plugin API is 
rather poorly documented, I was able to put something together quickly by looking at examples and browsing their forums.
It's a neat little tool and you can grab it at GitHub: <https://github.com/snasirca/SublimeText-PowerShell-Inline> Put 
the plugin folder under `%APPDATA%\Sublime Text 2\Packages\`. You can get to that folder by typing it into the Run 
command window. To use it, simply type in a command that can be executed in PowerShell in the Sublime Text editor:

    The quick brown fox jumped over the lazy dog...
    date

Highlight the text "date" and press "CTRL + SHIFT + R", and the command will be replaced with the result of its 
execution in PowerShell:

    The quick brown fox jumped over the lazy dog...
    February 9, 2013 8:11:55 PM

Another handy usage is when you need quick math calculations:

    The accuracy of the classifer was 252/(23+344+234+234+344)
    The quick brown fox jumped over the lazy dog...

With this plugin, it becomes:

    The accuracy of the classifer was 0.213740458015267
    The quick brown fox jumped over the lazy dog....

And since PowerShell treats a command as a .NET object, you can do things like this:

    The quick brown fox jumped over the lazy dog....
    "watch out for the dolphins!".ToUpper()

Becomes:

    The quick brown fox jumped over the lazy dog....
    WATCH OUT FOR THE DOLPHINS!

Let me know what you think!

[Sublime Text 2]: https://www.sublimetext.com/
[CSC401H1 Natural Language Computing]: https://www.artsandscience.utoronto.ca/ofr/calendar/crs_csc.htm#CSC401H1
[PowerShell]: https://en.wikipedia.org/wiki/Windows_PowerShell
[TextMate is able to pipe commands]: https://manual.macromates.com/en/shell_commands
