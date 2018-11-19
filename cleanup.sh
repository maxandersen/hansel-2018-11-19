find .  -type file -not -path "./.git/*" | sed -e 's/\(.\/\(\(....-..\).*\/\(.*\)\)\)/\mkdir \3; \"mv -v \''\1\'' \3\/\4\"/g' | gxargs  -I {} bash -c "{}"; find . -type d -empty -delet

e
