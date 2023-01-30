#!/bun/bash
avgfilevol () {
    if [[ -d $1 ]]; then
        i=0
	vol=0
        for file in $1*; do
            ((i++))
	    file_type=$(stat -c "%F" $file)
	    if [[ "$file_type" == "regular file" ]]; then
	    	filevol=$(stat -c "%s" $file)
	    	((vol=$vol+$filevol))
	    fi;
	done
    fi;
    echo $(($vol/$i))
}
avgfilevol $1
