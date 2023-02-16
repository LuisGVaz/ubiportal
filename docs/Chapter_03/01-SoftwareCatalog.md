# Software Catalog #

Backstage’s Software Catalog is the framework’s most demanded feature and the cornerstone for everything else. The Catalog’s objective is to map all software assets in your organization, including websites, APIs, libraries, and resources, in a centralized directory. This centralization is aimed at helping teams manage technology and enable discoverability. The Catalog tracks each asset's metadata, ownership, and dependencies, resulting in a software graph that surfaces orphaned entities.

The Catalog is flexible enough to host a wide variety of software assets, known as entities in Backstage. Because a website is very different from a data processing pipeline, entities can be differentiated by kind. Moreover, even within kinds of entities, you can define types. 

The Catalog is powered by metadata stored in YAML files, which describe the kind, type, name, owner, and more details of a single entity per file. These files are commonly stored along their respective codebase, such that it gets updated frequently. Some entity kinds may have authoritative sources that are not represented in a codebase, for example, users and teams dictated by Okta. 

Tracking ownership and dependencies is one of the strongest use cases for the Catalog. These are also declared in the YAML file describing a software component. Only a single team can be the component owner, and this team must be registered in the Catalog as an entity as well. As for dependencies, Backstage lets you define how the component depends on another entity and what it exposes so others can consume it. 

The software graphs that result from this metadata can surface problems like orphaned entities, which means they do not have a parent. Furthermore, given that a great deal of information about all your software assets is stored in the Catalog, you can extract insights such as maturity readiness or security warnings.