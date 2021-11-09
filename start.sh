if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/LikhonSheikhBot/likhonfariabot.git /likhonfariabot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /likhonfariabot
fi
cd /likhonfariabot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
