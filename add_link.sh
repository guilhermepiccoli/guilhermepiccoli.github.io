#!/bin/bash

if [ -z $4 ];
then
	echo "Usage: $0 <title> <short desc> <url> <target html file>"
	exit 1
fi

sed -i '/<\/body><\/html>/d' $4

echo -ne "<p><b>Title:</b> $1</p>\n<p><b>Short desc.:</b> $2</p>\n<p><b>URL:</b> <a href=\"$3\">$3</a></p>\n<hr>\n<br>\n" >> $4

echo -ne "\n</body></html>" >> $4
