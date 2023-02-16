# Setting up Authentication #

You most likely need authentication for your Developer Portal. Backstage supports eleven authentication providers out of the box, including Okta, Google, and custom OAuth 2 proxies. In this course, you’ll get started with GitHub for authentication, as you’ll continue to use GitHub in the next chapters. 

To enable GitHub authentication in your Backstage instance, you’ll create a GitHub OAuth App and add its credentials in app-config.local.yaml. Then, you’ll set up a Sign In button in Backstage’s frontend. 

First, go to GitHub’s settings to create your OAuth App. For “Homepage URL’, you’ll use your instance’s local URL http://local:3000. As for “Authorization Callback URL”, point it to your local Backstage backend http://localhost:7007/api/auth/github/handler/frame. 

Once you click “Register Application”, take note of the Client ID and Client Secret.

Now, open your app-config.local.yaml and add the authentication settings below the postgres details:

```yaml
backend:
  database:
    # ...
auth:
  environment: development
  providers:
    github:
      development:
        clientId: YOUR-CLIENT-ID
        clientSecret: YOUR-CLIENT-SECRET
```
Run your Backstage instance again, and if you see no errors, the setup is correct and you’re now ready to add a Sign In button!

Open packages/app/src/App.tsx and add the following below the last import line.

```typescript
import { githubAuthApiRef } from '@backstage/core-plugin-api';
import { SignInProviderConfig, SignInPage } from '@backstage/core-components';
const githubProvider: SignInProviderConfig = {
  id: 'github-auth-provider',
  title: 'GitHub',
  message: 'Sign in using GitHub',
  apiRef: githubAuthApiRef,
};
```

Within the same file, search for const app = createApp({, and below the apis object, add:

```typescript
components: {
   SignInPage: props => (
     <SignInPage
       {...props}
       auto
       provider={githubProvider}
     />
   ),
 },
 ```

Now, restart your instance, and you’ll see a Sign In prompt. 

Make sure both the frontend and backend are done loading in your terminal, or you’ll get a funny behavior. If you see [0] webpack compiled successfully in the terminal logs, it means the frontend is ready; if you see something like [1] backstage info Listening on:7007, the backend is ready.

Now you’re done setting up Backstage locally with PostgreSQL and authentication via GitHub!