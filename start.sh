if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AK4111/aakash-love-final.git /aakash-love-final
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /aakash-love-final
fi
cd /aakash-love-final
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
