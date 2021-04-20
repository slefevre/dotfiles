[alias]

; delete a branch locally and remotely, see `grow`
; git excise branch [remote|'origin']
excise = ! "gitexcise () { git branch -D $1; git push ${2:-origin} --delete $1; }; gitexcise"

; create and push a new branch {to remote, default `origin`}, see excise
; git grow <branch> [remote|'origin']
grow = ! "gitgrow() { git checkout -b $1; git push --set-upstream ${2:-origin} $1; }; gitgrow"

cob = checkout -b

co = checkout

; show the most recent commits in any branch
recent = for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'

; git regrow [target_branch] [source_branch] [remote]
regrow = ! "gitregrow() { name=$(git rev-parse --abbrev-ref HEAD) ; git checkout ${2:-master}; git branch -D ${1:-$name}; git push ${3:-origin} --delete ${1:-$name}; git checkout -b ${1:-$name}; git push --set-upstream ${3:-origin} ${1:-$name}; }; gitregrow"

; find-file
find-file = ! "gitfind-file() { git ls-tree -r HEAD | grep $1 ; }; gitfind-file"
