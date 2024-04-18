BASE_DIR=$HOME/put_license
REPO_LIST="testlic1 testlic2 testlic3"
for repo in $REPO_LIST
do	
	echo "======================================="
	cd $BASE_DIR
	echo "$repo"
	gh repo clone $repo
	cd $(basename "$repo")
	base_b=`git branch --show-current`
	cp $BASE_DIR/LICENSE .
	git add LICENSE
	git commit -m "adding License file"
	git push origin --set-upstream $base_b:push_license
	gh pr create -B $base_b -H push_license -a nadeemyaseen-rs -r ravic-rs --title 'Pushing License' --body 'An automated PR to check in GPL license copy'
done

echo "Done"

printf "nothing"

