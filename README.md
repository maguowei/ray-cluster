# ray-cluster

My Ray Cluster

---

## Cluster Setup

```bash
export HEAD_IP=xxx.xxx.xxx.xxx

# head node
ray start --head --redis-port=6379 --redis-password=passwd --num-cpus=2 --webui-host=0.0.0.0

# worker node
ray start --address='${HEAD_IP}:6379' --redis-password=passwd
```

```python
import ray
ray.init(address='auto', redis_password='passwd')
```
