#!/bin/bash

#Configuration
tg_bot_token="Bot token from @Botfather"
tg_chat_id="Your chat id"

#List logs and iterate
path="$HOME/.config/storjshare/logs"

for file_path in $path/*.log
do
	#Remove path
	file="${file_path/$path\//''}"

	#Exclude deamon
	if [ "$file" == "daemon.log"  ]; then
		continue
	fi

	#Elaborate data
	timedout=$(grep -c "timed out" "$file_path")
	sending=$(grep -c "sending" "$file_path")

	ratio=$(bc -l <<< "$timedout/$sending" | awk '{printf "%.4f\n", $0}')

	text="Storj ID: ${file/.log/''} %0A"
	text="$text""Ratio: $ratio"

	curl -s -X POST https://api.telegram.org/bot"$tg_bot_token"/sendMessage -d text="$text" -d chat_id="$tg_chat_id" -d parse_mode="Markdown"
done
