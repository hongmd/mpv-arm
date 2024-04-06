# Mpv.app on an Apple silicon Mac

Build mpv cho Mac Silicon từ source mpv-player/mpv có hỗ trợ vulkan

### Chuẩn bị

- [Apple Xcode](https://developer.apple.com/xcode/)
- [Homebrew](https://brew.sh/)

1. Clone source từ repo của mpv

```sh
git clone https://github.com/mpv-player/mpv.git
```

2. Cài đặt Molten-vk

```sh
brew install molten-vk
```

3. Cài đặt các dependencies cần thiết từ brew cho mpv

```sh
brew install --build-from-source --only-dependencies mpv && brew install libplacebo
```

4. Tải file 
