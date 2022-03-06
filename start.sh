if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Roahitvijay/Animefilter_bot1.git
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Animefilter_bot1
fi
cd /Animefilter_bot1
pip3 install -U -r requirements.txt
echo "Starting Animefilter_bot1...."
python3 main.py
