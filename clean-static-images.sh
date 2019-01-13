
find . -name "index.html" | xargs rm
find . -name "*.index.html" | xargs rm
find . -name "*.no_album" | xargs rm
find . -name "*.hide_album" | xargs rm
find . -type d -name tn | xargs rm -rf
find . -name "*txt~" | xargs rm
find . -name "*conf" | xargs rm
find . -name "Thumbs.db*" | xargs rm
find . -name "album.xy" | xargs rm
find . -name "captions.txt" | xargs rm

