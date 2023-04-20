# Docker wrapper for [`md2cf`](https://github.com/iamjackg/md2cf) tool

#### Tool repository

https://github.com/iamjackg/md2cf

#### Supported platforms

* linux/amd64
* linux/arm64

## Building latest version

```shell
make build
```

## Publishing latest version

This will build and publish docker image for `linux/amd64` and `linux/arm64` platforms.

```shell
make publish
```

## Usage

```shell
docker run --rm -it -v $PWD:/usr/src rtsdevops/md2cf [-h] [-o HOST] [-u USERNAME] [-p PASSWORD] [--token TOKEN] [--insecure] [-s SPACE] [--output {default,minimal,json}] [-a PARENT_TITLE | -A PARENT_ID | --top-level] [-t TITLE] [-c {page,blogpost}] [-m MESSAGE] [--minor-edit] [-i PAGE_ID] [--prefix PREFIX] [--strip-top-header] [--remove-text-newlines]
             [--replace-all-labels] [--preface-markdown [PREFACE_MARKDOWN] | --preface-file PREFACE_FILE] [--postface-markdown [POSTFACE_MARKDOWN] | --postface-file POSTFACE_FILE] [--collapse-single-pages] [--no-gitignore] [--beautify-folders | --use-pages-file] [--collapse-empty | --skip-empty]
             [--enable-relative-links] [--ignore-relative-link-errors] [--dry-run] [--debug] [--only-changed]
             [file_list ...]
```

### Bash alias example

```shell
alias md2cf="docker run --rm -e CONFLUENCE_HOST -e CONFLUENCE_USERNAME -e CONFLUENCE_TOKEN -it -v $PWD:/usr/src rtsdevops/md2cf"
```
