+++
title = "Exploring Outline (getoutline.com) for Team Knowledgebase"
date = "2025-07-13"
[taxonomies]
tags = ['makrdown', 'wiki', 'knowledgebase']
+++

Sometime back, I have stumbled upon [getoutline.com](https://getoutline.com/) since then I wanted to explore it! If you haven't heard of it, Outline is a fantastic, open-source team knowledge base that's designed to be fast, collaborative, and super easy to use. It is a powerful and cost-effective option right off the bat! Though, I wish for a better domain name 😉.

My main goals for this exploration:

* Migrate our existing GitHub Wiki
* Publish part of the wiki as a public help site
* Try out a product with AI powered search/querying 

So, how did it go? Let's dive in! 👇

## Minor Hurdle 1: Sign up

Could not sign up with individual email. One needs corp SSO account such Google workspace/Slack.

Signed up. Cloned my github wiki repository.

Used chatgpt to write a script that imports all the content (markdown and images) to outline using it's API.

## Minor hurdle 2: Rate Limits

API has somewhat restrictive rate limiting for import which was then overcome with 60 sec sleep between the calls.

Imported as a collection. Import works and looks great.

Figured out that `collection` can't published (public) directly. A document can be published and it's nested documents automatically be published.

Modified the script for this and then published. Worked perfect!

Now figuring out how to make certain links friendly. For example `/s/guide/doc/sharing-LG2sGOLIpl` to `/s/guide/doc/sharing` without the id suffix. [Documentation](https://docs.getoutline.com/s/guide/doc/sharing-LG2sGOLIpl) does say that it works but my guess it doesn't.

Here is the [script](https://gist.github.com/shon/247004a6bfbba47fe2cccbfcdf6fc394) if someone is interested

Custom domain is available for about $240 per year, so I am skipping that. Also there is no option in the settings but it's manual process based on support request. I decided to skip it.


## Conclusion
So far Outline experience has been positive! It's a user-friendly, and highly capable platform for managing team knowledge. Great APIs too. It is a powerful alternative to wikis/notion especially if you're on a budget.

For our internal Engineering knowledgebase, outline offers several key advantages

1. Powerful Search: GitHub's search functionality can be difficult. Outline's search is better. Its built-in AI queries are particularly effective at understanding natural language questions and providing answers based on our existing documentation.

2. Intuitive Editor: Outline's editor is far more capable and user-friendly. Its intuitive design and collaborative features make it easy for both developers and non-developers to contribute and update content.

3. Enhanced Collaboration: Outline supports real-time collaborative editing, which will be especially useful for updating complex deployment procedures and other shared tasks. It also has a native commenting system, making feedback and discussions more streamlined.

4. Flexible Sharing: We can selectively share documents publicly, a feature that will be handy for external-facing documentation.

5. Pricing: At a price of $10 per month for 10 users, it's a very affordable solution.

These were the most compelling reasons for the switch. As we begin using the platform, we'll also be able to explore other features like better content organization, APIs, and advanced access controls.

## Update (Sept 20th, 2025)
- Migrated to outline for a week's trial. Team seems convinced.
- I miss the ability of editing markdown files in your favorite editor (neovim in my case).
I feel WYSIWYG approach makes a product more accessible but makes both read and write a bit harder as the interface would have be ready to handle both intents. 
Example: Clicking a link while reading, sometimes open it for editing. Using space to pagedown is not possible. I feel more comfortable with an explicit edit button to enter edit mode.

