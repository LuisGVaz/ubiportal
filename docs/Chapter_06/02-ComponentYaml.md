# Describing a Component in a YAML File #

Components in Backstage are entities of kind Component with a few extra data requirements such as type, lifecycle, and owner. You describe these fields in a YAML file quite straightforwardly. Let’s illustrate how a component is described with an example.

Let’s say your organization has a public-facing website that you want to register in the Catalog. A description of that website could look something like this:

```yaml
apiVersion: backstage.io/v1alpha1
kind: Component
metadata:
  name: terroir-tracking-web
  description: Find where your juice comes from
spec:
  type: website
  lifecycle: production
  owner: tracking-team
```

In the snippet above, notice that apiVersion, kind, and metadata.name are mandatory for all entities. And for a component, such as a website from the example, you must also specify type, lifecycle, and owner in spec. 

By default, Backstage recognizes a component to be any type from the following: website, service, and library. As for lifecycle, the framework recognizes production, experimental, and deprecated. You can use these attributes to customize how components are rendered in your Catalog.

Once you have a YAML file to describe your component, you’ll need to add it to the component’s repository and make it available on its default branch. The rationale behind this is keeping the component’s metadata close to its source code, so maintainers can more easily keep the information up-to-date.

Although you can name your YAML file as you wish, Backstage recommends naming it catalog-info.yaml for uniformity.