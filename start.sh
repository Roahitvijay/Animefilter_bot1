if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Roahitvijay/Animefilter_bot.git /Animefilter_bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Animefilter_bot
fi
cd /Animefilter_bot
pip3 install -U -r requirements.txt
echo "Starting Animefilter_bot...."
python3 main.py
