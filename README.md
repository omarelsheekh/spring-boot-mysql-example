# Spring Boot MySQL Example

### bulding the database image
we need a mysql image v5.7.21 and compatible with bitnami mysql helm chart, so we will build it ourselves
- clone this [repo](https://github.com/bitnami/bitnami-docker-mysql)
- revert to [this commit](https://github.com/bitnami/bitnami-docker-mysql/tree/3fe6a5f9bc9f7ba4b46efd148d8b8337ee5c5f97)
```
git reset --hard 9439478
```
- follow [these stepes](https://github.com/bitnami/bitnami-docker-mysql/issues/58#issuecomment-435807167)
- put your image tag in these files
    - helm-chart/values.yaml
    - docker-compose.yml