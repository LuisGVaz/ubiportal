# Creating Instance #

You’ll start by running Backstage’s create-app script through npx, a package manager utility that comes with Node:

```bash
npx @backstage/create-app
```

You’ll be prompted to input the name you want for your Backstage instance; it’ll be used to name the directory where it’ll be stored. In our case, we chose the name ubiportal.

The script will copy Backstage’s template with directories and files and install all its dependencies.

When you navigate to the newly created directory, you’ll see the following structure:

─ packages
    ├─ app
            └─ package.json
    └─ backend
            └─ package.json
─ app-config.yaml
─ catalog-info.yaml
─ lerna.json
─ package.json

Notice that there are several package.json, that’s because your Backstage instance is implemented as a monorepo. Thus, the frontend (app) and the backend (backend) have their own dependencies and can be deployed independently. To manage dependencies between the monorepo, Backstage uses lerna, hence the lerna.json file. 

Notice as well the catalog-info.yaml file. Backstage uses this metadata file to add itself to the Software Catalog. Yes, Backstage wants to track every software asset in your organization, including itself!

At last, check out app-config.yaml. This is the main configuration file, where you can define your instance’s name and set options for the backend, authentication, and other integrations.

Now, let’s check out what Backstage looks like. Navigate to your instance’s directory in your terminal and run:

```bash
yarn dev
```

Once you see [0] Webpack compiled successfully in your terminal output, Backstage is ready to be used. Go to http://localhost:3000/ in your browser to see the Catalog up and running with sample entities. Feel free to browse around.

Now, let’s start making your Backstage instance more yours by changing its name. Go to your app-config.yaml file and change the app’s title to yours. In our case, it looks like this:

app:
  title: Terroir Portal
  baseUrl: http://localhost:3000

organization:
  name: Terroir Technologies

Now restart your Backstage servers, and you’ll see the name reflected!