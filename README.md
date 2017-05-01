# Storj-Ratio-Checker

> Simple bash script to check Storjshare timed out/sending ratio and send Telegram notification

## Table of Contents

- [Maintainer](#maintainer)
- [Install](#install)
- [Usage](#usage)
- [Contribute](#contribute)
- [License](#license)

## Maintainer

- [Pe46dro](https://github.com/Pe46dro)
- [Kaos1337](https://github.com/Kaos1337)

## Install

```
#Install requirements
apt-get install bc curl

#Download script
wget https://raw.githubusercontent.com/Pe46dro/Storj-Ratio-Checker/master/checker.sh

```

Edit `checker.sh` with your favorite editor and edit this two lines:
```
tg_bot_token="Bot token from @Botfather"
tg_chat_id="Your chat id"
```

Make it executable
```
chmod +x checker.sh
```

## Usage
```
./checker.sh
```

You can set a cronjob with the user that run Storjshare to keep track of the ratio with the schedule you prefer.

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

GNU General Public License v3.0