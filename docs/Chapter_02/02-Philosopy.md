# Backstage Philosophy #

Backstage’s vision is to create the best Developer Experience possible. In line with industry researchers, the team believes that happy developers can be more creative and productive. Backstage can be the center of Developer Experience (DX), from which teams can derive more initiatives, as Spotify experienced themselves. Thus, Backstage is built on top of opinions on what constitutes a good DX: autonomy and ownership.

Let’s first highlight Backstage’s role in your organization. It is not intended to be a single source of truth, but an aggregator. Backstage doesn’t seek to replace your existing CI/CD manager or LDAP directory, nor to re-implement their UIs. Instead, Backstage processes information about your services from different sources and puts them together, so it’s easier for developers to navigate them.

Now, let’s jump into the values. In the previous chapter, we reviewed the meaning of Developer Autonomy. But how does that apply to Backstage? Certainly, Backstage can facilitate autonomy by automating discoverability and offering self-service infrastructure. But keep in mind that you’re building a centralized platform for your entire organization: it would be close to impossible for you to add all the features and integrations that everybody needs.

Thus, Backstage’s framework prompts you to give your teams autonomy to contribute integrations instead of just requesting them. For instance, if you’d like to show analytics in your Developer Portal, let the analytics team own that integration. At Spotify, only a few people maintain their Backstage instance, but they have hundreds of plugins owned by different development teams.

And we’ve naturally arrived at the other Backstage pillar: ownership. For Backstage to be effective, it requires every software component to be owned by a single team, who will be responsible for keeping its information up to date.