set -e
mkdir -p public
curl -fsSL https://codeload.github.com/gokhanasan35/gokhan-asan-portfolio/tar.gz/refs/heads/main | tar xz --strip-components=1 -C public
for f in avka-d1.jpg avka-d2.jpg avka-d3.jpg avka-m1.jpg; do curl -fsSL -o public/img/$f https://gokhan-shots.vercel.app/$f; done
rm -f public/build.sh
ls -la public public/img
