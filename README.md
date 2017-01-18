# docker-eslint
Minimal eslint docker image

Latest docs: https://github.com/markocelan/docker-eslint

--------

This image was build for use in CI.

Example usage:
  * your whole codebase is JS project
  ```bash
docker run -it --rm \
           -v $PWD/.eslintrc.yml:/root/.eslintrc.yml:ro \
           -v $PWD:/src:ro \
           markocelan/eslint .
```
Note that we are "mounting" .eslintrc. It is a good idea that this file is a part of your code repository.

  * JS is only part of your project
  ```bash
docker run -it --rm \
           -v $PWD/.eslintrc.yml:/root/.eslintrc.yml:ro \
           -v $PWD/path_to_js:/src:ro \
           markocelan/eslint .
```

  * JS directories are scattered across different folders
  ```bash
docker run -it --rm \
           -v $PWD/.eslintrc.yml:/root/.eslintrc.yml:ro \
           -v $PWD:/src:ro \
           markocelan/eslint js_folder1 js_folder2 js_folder3
```

--------