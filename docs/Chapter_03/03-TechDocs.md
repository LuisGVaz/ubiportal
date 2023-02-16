# Backstage TechDocs #

A major win for teams using Backstage is that they get a centralized hub for all their documentation. TechDocs is the framework’s documentation-as-code solution; it takes markdown files and transforms them into static pages.

TechDocs follows the same principle as the Catalog metadata files: stay close to the source code to stay accurate. TechDocs are written as markdown files in the repository where the entity that they document is kept. Then, the TechDocs Backstage plugin fetches these files from all services, generates static pages, and publishes them. 

TechDocs lets developers focus on writing instead of managing the publishing process. It will take care of gathering the different sources and building the pages, including navigation and any other UI elements needed. The build process is flexible to accommodate complex logic, allowing developers to choose to build the docs locally for some services while letting TechDocs build it on the runtime in others. 