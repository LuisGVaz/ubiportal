# Registering a GitHub Integration #

Integrations in Backstage lets you read or publish data using external sources such as GitHub, GitLab, Bitbucket, and other Cloud providers. Backstage offers 10 different vendor integrations by default. To register components in the Catalog, you must set up an integration so Backstage can fetch the YAML files from your repositories. Let’s get started by setting up a simple integration for GitHub.

To set up a local GitHub integration, you’ll create a GitHub access token for your instance and then add its credentials to your app-config.local.yaml.

Consider using a GitHub App to manage the integration when setting up Backstage for your organization. A GitHub app gives you higher rate limits and lets a team manage the integration rather than a singular person. But for this course’s purposes, let’s keep it simple by using a Personal Access Token.

To create a Personal Access Token, go to your settings, add a name, and set an expiration date of your preference. In terms of scope, you’ll need repo and workflow to follow along this course. Click on “Generate Token”, and take note of the details in a safe place.

Now, open your app-config.local.yaml, and add the credentials for your token as pictured below:

```yaml
integrations:
  github:
    - host: github.com
      token: ghp_YOURTOKEN # this should be the token from GitHub
```

Re-run your Backstage instance, and if you see no errors in the log, the integration is working!