# How to be a good developer?

[Slides](https://tomastomecek.github.io/openalt-2018-talk)

## Running locally

GitHub uses [jekyll](https://github.com/jekyll/jekyll) to deploy, here's how to do it locally:

```
docker run --rm --label=jekyll --volume=$PWD:/srv/jekyll \
  -it -p 127.0.0.1:4000:4000 jekyll/jekyll jekyll serve
```

[Source](https://github.com/jekyll/docker/wiki/Usage:-Running)
