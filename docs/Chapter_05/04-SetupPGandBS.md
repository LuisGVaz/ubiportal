# Setting up Postgres in Backstage #

Conveniently, Backstage allows you to have different configurations for different environments. You already worked on the main configuration file, app-config.yaml, to set your organization name. But you’ll find app-config.local.yaml and app-config.production.yaml too, these are used in local and production environments, respectively. 

For now, you’ll be working with app-config.local.yaml. Backstage includes this file by default in .gitignore, which means nothing you put there will be committed nor pushed upstream. This can give you more peace of mind when putting secrets for local development there.

To set up Backstage with Postgres in your machine, add the following to your app-config.local.yaml:

```yaml
backend:
  database:
    connection:
      host: localhost
      # Default postgresql port, change accordingly to your case
      port: 5432
      user: postgres
      # The password you set earlier
      password: secret
```

Stop and run your instance again with yarn dev. If the console makes it to [0] webpack compiled successfully, everything’s working fine!