# dump_raw

dump_raw is a small program to just dump the IQ data in dump1090 format.
It can be used in conjunction with the [dump1090](https://github.com/antirez/dump1090) 
Mode S decoder and an appropriate antenna to receive ADS-B data.

    ./dump_raw | ./dump1090 --ifile - --interactive --aggressive


The default frequency and symbol rate are set to the 1090MHz band, If
you want to change it, see

    ./dump_raw --help
