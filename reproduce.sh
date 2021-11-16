# Init Repo
cd /tmp
mkdir gitlab-prview-diff-bug && cd gitlab-prview-diff-bug
git init
echo "Init" >> init
git add init
git commit -m "init"

# branchs
git checkout -b pre-release
git checkout -b common
git checkout -b feat

# some feature on feat0 branch
echo "feat0" >> feat0
git add feat0
git commit -m "file feat0"

git checkout pre-release
git merge --no-ff --no-edit feat

# some common update
git checkout common
echo "cmm" >> cmm
git add cmm
git commit -m "file cmm"

git checkout pre-release
git merge --no-ff --no-edit common

# feat use common and update some feature
git checkout feat
git merge common --no-edit
echo "feat1" >> feat1
git add feat1
git commit -m "file feat1"

# diff
git log --all --graph --oneline
echo "git diff pre-release feat"
git diff pre-release feat

echo "git diff pre-release..feat"
git diff pre-release..feat

echo "git diff pre-release...feat"
git diff pre-release...feat

echo 'git diff $(git merge-base pre-release feat) feat'
git diff $(git merge-base pre-release feat) feat

# clear
rm -rf /tmp/gitlab-prview-diff-bug/

