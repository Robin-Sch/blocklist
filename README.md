# Adblock Creator

Create a list with (a lot of) adblock lists. (I use this personally on my [pihole](https://pi-hole.net/))

## How to use with the hosts file (and most other things)?

Run the `select.sh` file (you need whiptail installed) to select the blocking lists

Run the `generate.sh` file to generate the hosts file

Put that list as your [hosts](https://en.wikipedia.org/wiki/Hosts_(file)) file, or use it with for example NetGuard

## How to use with pihole?

Run the `select.sh` file (you need whiptail installed) to select the blocking lists

Copy the contents of `lists.txt` to [adlists](http://pi.hole/admin/groups-adlists.php)
(`lists2.txt` might work too, but not sure)

Run `pihole -g`, or use the [gui](http://pi.hole/admin/gravity.php)

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)