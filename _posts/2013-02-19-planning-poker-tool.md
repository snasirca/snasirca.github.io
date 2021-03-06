---
layout: post
title: "Planning Poker Tool"
date: 2013-02-19 19:54:00 
categories: [Tools]
tags: agile estimation planning-poker
comments: true
---

Recently for a university software engineering group project, the need arose to perform [Planning Poker] to estimate the
workload for each [User Story] (story points). Wikipedia says that:

> **Planning Poker**, also called Scrum poker, is a consensus-based technique for estimating, mostly used to estimate 
effort or relative size of user stories in software development. It is a variation of the [Wideband Delphi] method. It
is most commonly used in [Agile software development], in particular in [Extreme Programming].

Since my group and I were going to be meeting over Skype, we needed a quick utility to estimate story points while being
remote. Here is what I did.

<!--more-->

I whipped up a small PHP script to tackle this issue so that we didn't have to rearrange our meeting to be in person. 
You can find it here at:

[planning-poker.snasir.ca](https://planning-poker.snasir.ca)

(2018-01-21) **Update!** I've migrated from my shared hosting company to AWS Lambda and Serverless to save costs. The 
backend of the tool has been migrated from PHP to ExpressJS. It is deployed to AWS Lambda and API Gateway using
[serverless].

Maybe this can help out another team looking for a quick way to perform planning poker without any signups or 
registration. Here is what it looks like:

![A preview of my planning poker tool.](/img/posts/planning-poker-preview.jpg)
*A preview of my planning poker tool.*

[Planning Poker]: https://en.wikipedia.org/wiki/Planning_poker
[User Story]: https://en.wikipedia.org/wiki/User_story
[Wideband Delphi]: https://en.wikipedia.org/wiki/Wideband_Delphi
[Agile software development]: https://en.wikipedia.org/wiki/Agile_software_development
[Extreme Programming]: https://en.wikipedia.org/wiki/Extreme_Programming
[serverless]: https://serverless.com
