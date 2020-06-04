# ray-cluster

My Ray Cluster

---

## Cluster Setup

```bash
export HEAD_IP=xxx.xxx.xxx.xxx

# head node
ray start --head --redis-port=6379 --redis-password=passwd --webui-host=0.0.0.0

# worker node
ray start --address='${HEAD_IP}:6379' --redis-password=passwd
```

```python
import ray
ray.init(address='auto', redis_password='passwd')
```

## Use Docker

```bash
docker run --name ray-head -d -p 8265:8265 -p 6379:6379 maguowei/ray ray start --head --redis-port=6379 --redis-password=passwd --webui-host=0.0.0.0 --block
```

## Ref

- [ray-project/ray](https://github.com/ray-project/ray)
