#!/bin/sh

umask 022

PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin"
export PATH

SVR_DEFAULT='ftp://obsd.cec.mtu.edu/pub/OpenBSD'

usage() {
  echo "Usage: action release [path_to_OpenBSD_root]"
  echo
  echo "e.g. $0 lists 4.6 ftp://ftp.openbsd.org/pub/OpenBSD"
  echo
  echo "Action must be one of:"
  echo "  plist   [print plist.txt without comments; release can be omitted]"
  echo "  lists   [create URL and size lists for later use]"
  echo "  get     [get packages]"
  echo "  missing [what packages were not on the server?]"
  echo "  size    [did we get all of each file?]"
  echo "and can be abbreviated."
  echo
  echo "Path defaults to $SVR_DEFAULT."
}

clean_plist() {
  sed -e 's/ *#.*$//' -e '/^$/d' plist.txt
}

case "$1" in
  plist|p*)
    clean_plist
    exit
    ;;
esac

[ $# -lt 2 ] && { usage; exit; }

SVR="${3:-"$SVR_DEFAULT"/"$2"}"

case "$1" in
  lists|l*)
    if [ ! -e i386-"$2".txt ]; then
      wget "$SVR"/packages/i386/index.txt
      mv index.txt i386-"$2".txt
    fi

    rm -f i386-all-"$2".txt
    awk '{print $10 " " $5}' i386-"$2".txt >> i386-all-"$2".txt

    rm -f i386-urls-"$2".txt
    rm -f i386-size-"$2".txt
    for i in `clean_plist`; do
      grep "^$i" i386-all-"$2".txt | \
        awk '{print "'"$SVR"'/packages/i386/"$1}' >> i386-urls-"$2".txt
      grep "^$i" i386-all-"$2".txt >> i386-size-"$2".txt
#      awk '$10 ~ /^'"$i"'/ {print "'"$SVR"'/packages/i386/"$10}' \
#        i386-"$2".txt \
#        >> i386-urls-"$2".txt
#      awk '$10 ~ /^'"$i"'/ {print $10 " " $5}' i386-"$2".txt \
#        >> i386-size-"$2".txt
    done

    ;;

  get|g*)
    cd ../i386
    wget -nc -i ../plist/i386-urls-"$2".txt
    chmod 644 *.tgz
    cd - > /dev/null
    ;;

  missing|m*)
    ls ../i386 > i386-ls-"$2".txt

    rm -f i386-missing-"$2".txt
    for i in `clean_plist`; do
      if ! grep "^$i" i386-ls-"$2".txt > /dev/null; then
        echo "$i"
        echo "$i" >> i386-missing-"$2".txt
      fi
    done

    ;;

  size|s*)
    # sort so we get the same order as ls; even if plist.txt was sorted,
    # removing \s will change the order
    sort i386-size-"$2".txt > i386-size_s-"$2".txt
    ls -l ../i386 | tail +2 | awk '{print $9 " " $5}' > i386-lssize-"$2".txt
    echo "< server | here >"
    diff i386-size_s-"$2".txt i386-lssize-"$2".txt
    ;;

  *)
    usage
    exit
    ;;
esac
