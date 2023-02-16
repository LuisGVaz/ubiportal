# Backstage Plugins #

So far, all the features we’ve seen are implemented as plugins but are maintained by the Backstage team and considered core features of the framework. But a few dozen community plugins are available, and even plugins that extend other plugins.

Community plugins either extend a core feature, add new functionalities, or integrate with a vendor. There’s a handful of plugins that extend the Catalog, for instance, a plugin that generates graphs that show the relationship between entities or an Okta plugin that ingests users and teams as entities. Added functionalities range from repository badges to generating API documentation. Most plugins bring information from vendors into Backstage, such as PagerDuty incidents and ArgoCD statuses. 

Additionally, you can write your own plugins for internal use or contribute them back to the community.