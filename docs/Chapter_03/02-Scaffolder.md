# Backstage Scaffolder #

One major use case for Backstage is helping onboard new team members and promoting golden paths among regular contributors. The Scaffolder provides your developers with the ability to execute software templates that initialize repositories with skeleton code and predefined settings.

The Scaffolder is a perfect place for new engineers to jump into the development process right away. You could, for example, set up a template to Create Node/React Website in your Scaffolder, which sets up a repository with CI/CD and analytics baked in from the beginning. When the new developers use the software template, they’ll get a deploy-ready service that will allow them to familiarize themselves with the tools and feel productive with a few clicks instead of having to wander aimlessly through your tech ecosystem. 

A software template is defined in a YAML file that specifies parameters and steps to execute. Backstage will generate a UI in the Scaffolder based on the parameters that you specify in your software template. For the steps, you can leverage built-in actions for common fetch operations, but you can also define your own. 

Templates are stored in the Catalog under a template kind. Furthermore, all components initialized by the Scaffolder are automatically added to the Catalog. Therefore, there’s a virtuous cycle between the Scaffolder and the Catalog that promotes discoverability and standardization. 