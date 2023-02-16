# BackStage Search #

Search is the most recent addition to Backstage’s framework. Search allows developers to find information across their ecosystem by leveraging your search engine of preference and lets you customize how things are indexed and presented to the user. 

Search is quite customizable. For starters, the plugin allows you to bring your own search engine, although ElasticSearch is the officially maintained engine. Search ships with a rudimentary query translator that turns the user’s input into a fully formed query, but you’re allowed to customize it to your engine and use cases better. You’re also welcome to customize the search results page and what each result looks like. 

Under the hood, Search searches “documents” that represent entities, documentation pages, or any other thing that you put into Backstage. These documents are consumed through streams exposed by a Collator. Collators define what can be found by defining, indexing, and collecting documents. Currently, collators are available for the Catalog, TechDocs, and Stack Overflow. You can define your collators too.