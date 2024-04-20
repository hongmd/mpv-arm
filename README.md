# Mpv.app on an Apple silicon Mac

Hướng dẫn build mpv cho Mac Silicon từ source mpv-player/mpv có hỗ trợ vulkan.

## Preparation

- [**Apple Xcode**](https://developer.apple.com/xcode/)
- [**Homebrew**](https://brew.sh/)

## Build and install

1. Clone source từ repo của [**mpv**](https://github.com/mpv-player/mpv.git)

```sh
git clone https://github.com/mpv-player/mpv
```

2. Cài đặt **Molten-vk**

```sh
brew install molten-vk
```

3. Cài đặt các dependencies cần thiết từ brew cho mpv

```sh
brew install --build-from-source --only-dependencies mpv && brew install libplacebo
```

4. Tải file [**build-mpv_silicon.sh**](https://github.com/tranthanhxhong/mpv-arm/blob/main/build-mpv_silicon.sh) và đặt vào folder mpv đã clone trước đó

- [**build-mpv_silicon.sh**](https://github.com/tranthanhxhong/mpv-arm/blob/main/build-mpv_silicon.sh)

5. Cài đặt **dylibbundler**

```sh
brew install dylibbundler
```

6. Chạy file **build-mpv_silicon.sh**

```sh
cd mpv
./build-mpv_silicon.sh --static

# Alternatively, you can make an app bundle by adding '--bundle' option
# This will create mpv.tar.gz with mpv.app
./build-mpv_silicon.sh --bundle
```

7. Copy **mpv.app** trong thư mục **./mpv/build/** vào **/Applications**.

## Optional

Cài streamlink và yt-dlp

```sh
brew install streamlink
brew install yt-dlp
```

sau đó symlink về `/usr/local/bin`

```sh
sudo ln -s /opt/homebrew/bin/streamlink /usr/local/bin/streamlink
sudo ln -s /opt/homebrew/bin/yt-dlp /usr/local/bin/yt-dlp
```

cập nhật git clone local bằng cách chạy lệnh sau từ thư mục gốc:

```sh
git reset --hard
git clean --force -d -x
git pull origin master
```
