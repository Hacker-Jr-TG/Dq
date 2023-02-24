if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Hacker-Jr-TG/Dq.git /Dq
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Dq
fi
cd /Dq
pip3 install -U -r requirements.txt
echo "Starting Dq...."
python3 bot.py
