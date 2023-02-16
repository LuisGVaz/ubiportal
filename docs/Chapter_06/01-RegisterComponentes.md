# Registering Components in the Catalog #

The most common kind of entity that you’ll handle in your Backstage instance are components. Components refer to software components such as services, websites, and libraries that are typically linked to a repository whose code produces deployed instances or linkable artifacts. In Backstage, components are described with metadata in a YAML file that is stored in the repository where their code lives.

Backstage needs to know where those YAML files are located in order to add them to the Catalog. There are two ways to do this: manually registering a component through Backstage’s UI and setting up an entity processor that discovers YAML files in your organization’s source code management system.

Once you register these locations in the Catalog, Backstage will fetch the YAML files from them. Therefore, Backstage needs access to read your repository and will need an access token. Backstage will periodically check the information in the metadata files to keep the Catalog up to date. 

In this chapter, you’ll learn how to write a YAML file to describe a software component, set up an integration with GitHub such that Backstage can read the file from your repository, and finally register a component manually through Backstage’s UI. 