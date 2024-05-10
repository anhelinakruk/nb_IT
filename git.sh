"Wprowadzanie do commitów Gita"
git commit 
git commit

"Rozgałęzienia w Gicie"
git branch bugFix
git checkout bugFix
(git checkout -b bugFix)

"Merge w Gicie"
git checkout -b bugFix
git commit 
git checkout main
git commit 
git merge bugFix

"Wprowadzenie do Rebase"
git checkout -b bugFix
git commit
git checkout main
git commit 
git checkout bugFix
git rebase main

"Odczep sobie HEAD"
git checkout C4

"Referencje względne #1"
git checkout bugFix^

"Referencje względne #2"
git branch -f main C6
git checkout HEAD~1

"Odwracanie zmian w Gicie"
git reset HEAD~1
git checkout pushed
git revert HEAD

"Wprowadzenie do cherry-pick"
git cherry-pick C3 C4 C7

"Wprowadzenie do interaktywnego rebase'a"
git rebase -i HEAD~4

"Wzięcie tylko 1 commita"
git checkout main
git cherry-pick C4

"Żonglowanie commitami"
git rebase -i HEAD~2
git commit --amend
git rebase -i HEAD~2
git rebase caption main

"Żonglowanie commitami #2"
git checkout main
git cherry-pick C2
git commit --amend
git cherry-pick C3

"Tagi gita"
git tag v1 side~1
git tag v0 main~2
git checkout v1

"Git describe"
git describe main
git describe side
git describe bugFix
git commit

"Rebase ponad 8000 razy"
reset
git rebase main bugFix
git rebase side another
git rebase bugFix side
git rebase side another
git rebase another main

"Wielu rodziców"
git branch bugWork main^^2^

"Spaghetti gałęzi"
git checkout one
git cherry-pick C4 C3 C2
git checkout two
git cherry-pick C5 C4 C3 C2
git branch -f three C2

- ZDALNE REPOZYTORIUM
"Wstęp do klonowania"
git clone 

"Zdalne gałęzie Git"
git commit
git checkout o/main
git commit

"Git fetch"
git fetch

"Git pull"
git pull

"Symulacja pracy zespołowej"
git clone
git fakeTeamwork 2
git commit
git pull

"Git push"
git commit
git commit
git push

"Rozbiezna historia"
git clone
git fakeTeamwork
git commit
git pull --rebase
git push

"Zablokowany main"
git reset --hard o/main
git checkout -b feature C2
git push origin feature

"Wypychanie dla wytrwałych"
git fetch
git rebase o/main side1
git rebase side1 side2
git rebase side2 side3
git rebase side3 main
git push

"Scalanie z remote"
git checkout main
git pull
git merge side1
git merge side2
git merge side3
git push

"Śledzenie zdalnych repo"
git checkout -b side o/main
git commit
git pull --rebase
git push

"Argumenty git push"
git push origin foo
git push origin main

"Argumenty git push - głębiej"
git push origin foo:main
git push origin main^:foo

"Argumenty fetch"
git fetch origin c6:main
git fetch origin c3:foo
git checkout foo
git merge main

"Źródło nicości"
git push origin :foo
git fetch origin :bar

"Argumenty pull"
git pull origin c3:foo
git pull origin c2:side