# check if update should be skipped
if [ "$1" != "-no-update" ]; then
        sudo apt-get update
else
        echo "-no-update flag passed, skipping apt-get update"
fi

sudo apt-get install openjdk-8-jdk

# TODO manually
# install spring tool suite
# install slack client
