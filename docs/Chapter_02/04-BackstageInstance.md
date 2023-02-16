# Backstage Instance #


We’ve talked about the Backstage project’s story and values. Now let’s talk about what exactly your Backstage instance will be. In a nutshell, your Backstage instance is a Node/React app built using Backstage’s core libraries on top of which you install community and private plugins.

Backstage uses a three-layers model to explain how a Developer Portal is built using its framework.


* Core
This is what the Backstage team maintains and releases as open source. Unless you want to contribute to the project, you may not need to wrap your head around this piece from the beginning.
* App
This app is the Developer Portal that you’ll make available to your developers. While adopting Backstage, you’ll be interacting the most with this piece.
* Plugins
To extend your instance’s functionality, you can install plugins into it. Even basic functionality is abstracted as plugins, including the Catalog. So you’ll always be working with a handful of plugins. There are a few dozen community plugins available to integrate popular services. And you can create your own.