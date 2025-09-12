+++
title = "Exploring Team Knowledge wiki Outline (getoutline.com)"
date = "2025-07-13"
tags = ['makrdown', 'wiki', 'knowledge-base']
+++

Sometime back, I have stumbled upon [getoutline.com](https://getoutline.com/) since then I wanted to explore it! If you haven't heard of it, Outline is a fantastic, open-source team knowledge base that's designed to be fast, collaborative, and super easy to use. It is a powerful and cost-effective option right off the bat! Though, I wish for a better domain name 😉.

My main goals for this exploration:

* **Migrate our existing GitHub Wiki**
* **Publish part of the wiki as a public help site**

So, how did it go? Let's dive in! 👇

Minor Hurdle 1: Could not sign up with individual email. One needs corp SSO account such Google workspace/Slack.

Signed up. Cloned my github wiki repository.

Used chatgpt to write a script that imports all the content (markdown and images) to outline using it's API.

Minor hurdle 2: API has somewhat restrictive rate limiting for import which was then overcome with 60 sec sleep between the calls.

Imported as a collection. Import works and looks great.

Figured out that `collection` can't published (public) directly. A document can be published and it's nested documents automatically be published.

Modified the script for this and then published. Worked perfect!

Now figuring out how to make certain links friendly. For example `/s/guide/doc/sharing-LG2sGOLIpl` to `/s/guide/doc/sharing` without the id suffix. [Documentation](https://docs.getoutline.com/s/guide/doc/sharing-LG2sGOLIpl) does say that it works but my guess it doesn't.

Here is the [script](https://gist.github.com/shon/247004a6bfbba47fe2cccbfcdf6fc394) if someone is interested

Custom domain is available for about $240 per year, so I am skipping that. Also there is no option in the settings but it's manual process based on support request. I decided to skip it.


So far Outline experience has been positive! It's a user-friendly, and highly capable platform for managing team knowledge. Great APIs too. If you're looking for a powerful alternative to wikis/notion especially if you're on a budget, I highly recommend checking out [getoutline.com](https://getoutline.com/)!
