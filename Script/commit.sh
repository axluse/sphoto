#!/bin/sh
if [ $# -ne 1 ]; then
  echo "[Error] 実行するには、ブランチ名の指定が必要です。" 1>&2
  exit 1
fi

echo "コミットするメッセージを入力してください："
read message
echo $(git stash)
echo $(git checkout $1)
echo $(git stash pop)
echo $(git add .)
echo $(git commit -m "$message")