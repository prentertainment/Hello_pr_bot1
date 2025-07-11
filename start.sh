if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/prentertainment/Hello_pr_bot1 /Hello_pr_bot1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Hello_pr_bot1
fi
cd /Hello_pr_bot1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
