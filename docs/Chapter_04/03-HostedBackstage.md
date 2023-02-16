# Self-Hosted Backstage #

The default approach to adopting Backstage is deploying it the same way you deploy similar services. Popular approaches involve deploying Backstage with Kubernetes on AWS or Azure. Spotify has shared its success using Google Cloud with Backstage, but the framework doesn’t have strong opinions about whether you deploy it to a particular Cloud or how. 

The advantage of self-hosted Backstage is that you have practically no limits on how much you customize your Backstage instance. Some go as far as using only the backend and constructing a frontend with their design system. But keep in mind that the farther away you go from the Open Source framework, the more work it’ll involve for you to keep your instance up to date with new features and fixes.

The disadvantage of self-hosted Backstage is that your team will need to spend considerable effort learning about Backstage’s internals, upgrading the core libraries monthly, and each plugin when there’s a new release. Managing your instance can represent a part-time engineer or more, depending on the scale of your Developer Portal.