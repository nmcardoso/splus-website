git config --global user.email "deploy@travis.org"
git config --global user.name "Travis CI Deployment Bot"

cd zipball
git init
git add .
git commit --quiet -m ":rocket: Zipball Build"
git push --force --quiet "https://nmcardoso:${ACTIONS_TOKEN}@github.com/nmcardoso/splus-website.git" master:zipball
