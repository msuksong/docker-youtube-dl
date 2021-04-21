# Simple youtube-dl container

Simple youtube-dl container including ffmpeg for merging/converting downloaded audio/video data.

## Build

```bash
docker build -t youtube-dl:latest .
```

## Usage

```bash
docker run -v $(pwd):/downloads youtube-dl:latest [{youtube-dl options}] {youtube url}
```

## Example

```bash
docker run -v $(pwd):/downloads youtube-dl:latest -f 136+140 'https://www.youtube.com/watch?v=E5FS_Yy3WGM'
```

## How it is made

1. start with base image : [jrottenberg/ffmpeg](https://hub.docker.com/r/jrottenberg/ffmpeg):4.4-ubuntu
2. install `python3` and `python3-pip`
3. install youtube-dl with `pip3`
