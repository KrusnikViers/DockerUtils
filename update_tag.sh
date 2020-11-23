git config --local user.name Viers
git config --local user.email krusnik.viers@gmail.com
git remote add gh https://KrusnikViers:$GHUB_TOKEN@github.com/KrusnikViers/DockerUtils.git
git tag -f $1
git push -f gh $1
git remote rm gh
