
This works

```bash
cp -R project-to-link forge-project/lib
cd forge-project
forge test
```

This does not work

```bash
ln -s `pwd`/project-to-link ./forge-project/lib/
cd forge-project
forge test
```

# Executable REPRO


```bash
git clone git@github.com:bug-reproduction/foundry-symlinks.git;
cd foundry-symlinks;

# working case
cp -R project-to-link forge-project/lib;
cd forge-project;
forge test;

cd ..;
rm forge-project/lib/project-to-link

# failing case
ln -s `pwd`/project-to-link ./forge-project/lib/
cd forge-project;
forge test;
```
