# ElixirLogstash

I was trying to incorporate the [Logger Logstash Backend][LoggerLogstashBackend] into a larger project and ran into issues so I decided to make a barebones project to make the setup process a little simpler.

## Running the module

```
iex -S mix  
```
```
iex(1)> ElixirLogstash.log_debug("Hello")  
```

## Notes
Make sure to include *:tzdata* in the applications portion of the mix file.

#### Off-topic Notes
I use the [docker-elk][DockerElk] project to easily deploy a local ELK stack; however, by default it only sets up a TCP input for Logstash. See my fork of that project for the necessary configuration changes. These include:

- Add a UDP input for Logstash in the config.
- Forward a UDP port for the UDP input in the docker-compose YAML file.

[LoggerLogstashBackend]: <https://github.com/marcelog/logger_logstash_backend>
[DockerElk]: <https://github.com/deviantony/docker-elk>
