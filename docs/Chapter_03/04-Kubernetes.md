# Backstage on Kubernetes #

Backstage ships with a plugin that helps developers visualize the state of the clusters for each service. The tool helps understand the health of the service’s clusters at a glance, including development, staging, and production environments.

The Kubernetes plugin is tied to the Catalog. It shows information about the clusters associated with a service registered in the catalog. To enable it, you must tell Backstage how to discover your clusters, whether that is by reading information that exists already in the Catalog or by fetching it directly from GKE or another custom Kubernetes cluster supplier. 