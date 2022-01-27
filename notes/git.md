---
title: Git
---

Personal Git notes.

## Overwrite Remote Repository With Local Repository

```bash
git init . # Initiate git repo
git add * # Add all files, make sure .gitignore set up before this
git commit -m "Initial commit" # Commit staged files to repo
git remote add origin git@github.com:username/repo.git # Add remote repository called origin, make sure to add SSH key to Github
git push --force origin master # Force push the local master branch into the origin repo
```
