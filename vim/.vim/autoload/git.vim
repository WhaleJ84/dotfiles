python3 << PYEND
from github import Github

# First create a Github instance:
# using an access token
g = Github("db11ebf8dba0f771be5daab4d8f5cc4d2184f14e")

# Then play with your Github objects:
def test():
	for repo in g.get_user().get_repos():
		    print(repo.name)
PYEND

function git#test()
	:py3 test()
endfunction
