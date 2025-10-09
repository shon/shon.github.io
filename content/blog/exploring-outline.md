+++
title = "Exploring Outline (getoutline.com) for Team Knowledgebase"
date = "2025-07-13"
[taxonomies]
tags = ['markdown', 'wiki', 'knowledgebase']
+++

As our **Engineering team scales**, I was looking for a solution that could replace the GitHub wiki with something more capable. Specifically, a tool that offers easy access/collaboration, robust search, and supports AI queries. I had stumbled upon [getoutline.com](https://getoutline.com/) sometime back, and have been eager to explore it since! If you haven't heard of it, **Outline** is a fantastic, open-source team knowledge base that’s designed to be fast, collaborative, and super easy to use. It's a powerful and cost-effective option right off the bat! Though, I do wish that they had a better domain name 😉.

My main goals for this exploration:

* Migrate our existing **GitHub Wiki**
* Publish part of the wiki as a **public help site**
* Try out a product with **AI-powered search/querying**

So, how did it go? Let's dive in! 👇

## Minor Hurdle 1: Sign up

Could not sign up with an individual email. One needs a corporate SSO account such as Google workspace or Slack.

Once signed up, I cloned my GitHub wiki repository.

Used ChatGPT to write a script that imports all the content (markdown and images) to Outline using its API.

## Minor Hurdle 2: Rate Limits

The API has somewhat restrictive **rate limiting** for import, which was then overcome with a 60-second sleep between the calls.

Imported content as a collection. The import worked and looked great.

I figured out that a **collection** cannot be published (made public) directly. However, a document can be published, and its nested documents are automatically published.

I modified the script for this and then published the main document. It worked perfectly!

I then looked into making certain links friendly. For example, changing `/s/guide/doc/sharing-LG2sGOLIpl` to `/s/guide/doc/sharing` without the ID suffix. The [Documentation](https://docs.getoutline.com/s/guide/doc/sharing-LG2sGOLIpl) suggests this works, but my testing indicates otherwise.

Here is the [script and usage instructions here](https://gist.github.com/shon/247004a6bfbba47fe2cccbfcdf6fc394) if someone is interested.

Custom domain is available for about $240 per year, so I am skipping that. Also, there is no option in the settings, but it's a manual process based on a support request. I decided to skip it.

---

## Conclusion
So far, the Outline experience has been **positive**! It's a user-friendly and highly capable platform for managing team knowledge, with great APIs. It is a powerful alternative to wikis/Notion, especially if you're on a budget.

For our internal Engineering knowledge base, Outline offers several key advantages:

1.  **Powerful Search:** GitHub's native search functionality can be limiting. Outline's search is much better. Its built-in **AI queries** are particularly effective at understanding natural language questions and providing answers based on our existing documentation.
2.  **Intuitive Editor:** Outline's editor is far more capable and user-friendly. Its intuitive design and collaborative features make it easy for both developers and non-developers to contribute and update content.
3.  **Enhanced Collaboration:** Outline supports **real-time collaborative editing**, which will be especially useful for updating complex deployment procedures and other shared tasks. It also has a native commenting system, making feedback and discussions more streamlined.
4.  **Flexible Sharing:** We can selectively share documents publicly, a feature that will be handy for external-facing documentation.
5.  **No Vendor Lock-in:** Top-notch Markdown support for import/export helps.
6.  **Pricing:** At a price of **$10 per month for 10 users**, it's a very affordable solution.

These were the most compelling reasons for the switch. As we begin using the platform, we'll also be able to explore other features like better content organization, APIs, and advanced access controls.

---

## Issues (Mostly minor)
1.  ~~I miss the ability of editing markdown files in your favorite editor (neovim in my case).
    I feel the WYSIWYG approach makes a product more accessible but makes both read and write a bit harder as the interface would have to be ready to handle both intents.
    Example: Clicking a link while reading sometimes opens it for editing. Using space to pagedown is not possible. I feel more comfortable with an explicit edit button to enter edit mode.~~

    > **Turns out that Outline has support for turning off edit+read mode** or what they refer to as **`Separate Editing`**. That's cool.
    > When enabled, documents have a separate editing mode by default instead of being always editable. This setting can be overridden by user preferences.

2.  AI Query input box is not well designed for a larger prompt. It's a little annoying; I wish it auto-grows as one types more text.

---

## Update (Sept 20th, 2025)
Successfully migrated all the content to Outline. While the team seems convinced, I will give it a week for the final decision.

## Update (Oct 9th, 2025)
We are happy with the migration. They have a Slack integration which is quite helpful, especially for quick AI queries.
