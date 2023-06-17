# container-pritunl

Container image and Helm chart for Pritunl, VPN server.

## Usage

### Helm Chart

TBA

### Docker

```
docker run -itd -e PRITUNL_MONGODB_URI="<mongodb uri>" flaccid/pritunl
```

## Database

Use an external MongoDB database, such as the free tier at https://www.mongodb.com/atlas/database.

## Upstream Documentation

https://docs.pritunl.com/docs/installation

## Community Related Projects

- https://github.com/jippi/docker-pritunl - a Docker solution
- https://github.com/dysnix/docker-pritunl - a simple container image
- https://github.com/articulate/helmcharts/tree/master/stable/pritunl - a Helm chart
- https://github.com/dysnix/charts/tree/main/dysnix/pritunl - another Helm chart
