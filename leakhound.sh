#!/bin/bash

# ASCII art
cat << "EOF"
  _               _    _   _                       _ 
 | |    ___  __ _| | _| | | | ___  _   _ _ __   __| |
 | |   / _ \/ _` | |/ / |_| |/ _ \| | | | '_ \ / _` |
 | |__|  __/ (_| |   <|  _  | (_) | |_| | | | | (_| |
 |_____\___|\__,_|_|\_\_| |_|\___/ \__,_|_| |_|\__,_| 
  by @spazbg                    

EOF

# Array of warez sites
warez_sites=(
    "0x00sec.org"
    "alligator.cash"
    "altenens.is"
    "forum.antichat.com"
    "ascarding.com"
    "blackhatprotools.info"
    "breached.to"
    "carder-forum.online"
    "cardingforum.cx"
    "cardingleaks.ws"
    "cardvilla.cc"
    "chitachok.fun"
    "combolist.top"
    "cracked.io"
    "crackia.com"
    "cracking.org"
    "crackingall.com"
    "crackinghits.to"
    "crackingitaly.to"
    "crackingx.com"
    "crackingpro.com"
    "crackingshare.com"
    "crackx.to"
    "crime.to"
    "crdcrew.cc"
    "crdpro.cc"
    "cweb.ws"
    "cyberforum.ru"
    "cyberleaks.to"
    "cybernulled.com"
    "darkpro.net"
    "darkstash.com"
    "srv2.dark-time.life"
    "darkwebmafias.ws"
    "demonforums.net"
    "directleaks.to"
    "drdark.ru"
    "eleaks.to"
    "enclave.cc"
    "eternia.to"
    "forum.exetools.com"
    "exploit.in"
    "ezcarder.cc"
    "forumteam.site"
    "fssquad.com"
    "ghostlyhaks.com/forum"
    "go4expert.com/forums"
    "greekhacking.gr"
    "hackforums.net"
    "hackingfather.com"
    "hackonology.com/forum"
    "hackseller.com"
    "hacksturkey.com"
    "happy-hack.net/board"
    "forums.hide01.ir"
    "high-minded.net"
    "indetectables.net"
    "iran-cyber.net/forums"
    "forum.kuketz-blog.de"
    "leakforum.org"
    "leakforum.io"
    "leakzone.net"
    "leakedbb.com"
    "leech.is"
    "legitcarder.ru"
    "legitcarders.ws"
    "lolz.guru"
    "maultalk.com"
    "memoryhackers.org"
    "niflheim.top"
    "noirth.com"
    "nsaneforums.com"
    "nullcrack.store"
    "nulled.to"
    "nulled.id"
    "pegasushackteam.com"
    "psylab.cc"
    "openssource.info"
    "p0wersurge.com/forums"
    "prologic.su"
    "r10.net"
    "reteam.org/board"
    "romhacking.net/forum"
    "rstforums.com/forum"
    "russiancarder.net"
    "seopirat.club"
    "shieldforum.in"
    "sinfulsite.com"
    "sinister.ly"
    "soldierx.com/bbs"
    "szenebox.org"
    "trainingcircle.in"
    "trustedsellers.ws"
    "turkhacks.com"
    "underc0de.org/foro"
    "underworldmafias.net"
    "validmarket.io"
    "verifiedcarder.net"
    "vlmi.ws"
    "webmasters.ru/forum"
    "wilderssecurity.com"
    "xak.guru"
    "xss.is"
    "youhack.ru"
    "rebreached.vc"
)

# Array of paste bin sites
paste_sites=(
    "pastebin.com"
    "gist.github.com"
    "privatebin.net"
    "hastebin.com"
    "ghostbin.com"
    "justpaste.it"
    "ideone.com"
    "jsfiddle.net"
    "rentry.co"
    "dpaste.com"
    "0bin.net"
    "paste.mozilla.org"
    "paste.ubuntu.com"
    "paste.centos.org"
    "paste.debian.net"
    "cl1p.net"
    "vpaste.net"
    "sprunge.us"
    "paste.sh"
    "paste.ee"
    "friendpaste.com"
    "defuse.ca/pastebin.htm"
    "dpaste.org"
    "paste.ofcode.org"
    "paste.pound-python.org"
    "paste.xinu.at"
    "paste.org.ru"
    "apaste.info"
    "quickhighlighter.com"
    "commie.io"
    "everfall.com/paste/"
    "kpaste.net"
    "n0paste.tk"
    "paste.lv"
    "pastebin.pt"
    "pastebin.fi"
    "tutpaste.com"
    "bitbin.it"
    "nekonin.com"
    "pasteio.com"
    "paste4btc.com"
    "pastebin.ai"
    "repl.it"
    "codepen.io"
    "gitlab.com/explore/snippets"
    "paste.rohitab.com"
    "codeshare.io"
    "paste.opensuse.org"
    "dotnetfiddle.net"
    "snipplr.com"
    "paste2.org"
    "ivpaste.com"
    "codepad.org"
    "pastebin.osuosl.org"
    "bpa.st"
    "ghostbin.co"
    "pastebin.fr"
    "jsitor.com"
    "p.ip.fi"
    "cutapaste.net"
    "paste.jp"
    "paste-bin.xyz"
    "termbin.com"
    "pasted.co"
    "controlc.com"
    "pastebin.icoder.uz"
    "pst.klgrth.io"
    "heypasteit.com"
    "paste.lisp.org"
    "pasteall.org"
    "paste.scratchbook.ch"
    "dumpz.org"
    "paste.strictfp.com"
    "pastecode.ru"
    "pastesqf.com"
    "pastecode.fr"
    "99paste.com"
    "nopaste.me"
    "pastefs.com"
    "zerobin.net"
)

# Function to URL encode a string
urlencode() {
  local string="${1}"
  local strlen=${#string}
  local encoded=""
  local pos c o

  for (( pos=0 ; pos<strlen ; pos++ )); do
     c=${string:$pos:1}
     case "$c" in
        [-_.~a-zA-Z0-9] ) o="${c}" ;;
        * )               printf -v o '%%%02x' "'$c"
     esac
     encoded+="${o}"
  done
  echo "${encoded}"
}

# Function to display usage information
display_usage() {
  echo "Usage: $0 [options]"
  echo ""
  echo "Options:"
  echo "  -d <search_terms>    Specify the search terms or Google dorks"
  echo "  -warez               Search on Warez sites"
  echo "  -paste               Search on Paste Bin sites"
  echo "  -r <results_limit>   Limit the number of generated results in the output"
  echo "  -e <search_engine>   Specify the search engine (google, bing, or yandex)"
  echo ""
  echo "Examples:"
  echo "  $0 -d \"some_string\" -warez"
  echo "  $0 -d \"string1 OR string2\" -paste -e bing"
  echo "  $0 -d \"string1 AND string2\" -warez -r 3 -e yandex"
}

# Parse command line arguments
search_terms=""
site_type=""
results_limit=""
search_engine="google"

while [[ $# -gt 0 ]]; do
  case "$1" in
    -d)
      search_terms="$2"
      shift 2
      ;;
    -warez)
      site_type="warez"
      shift
      ;;
    -paste)
      site_type="paste"
      shift
      ;;
    -r)
      results_limit="$2"
      shift 2
      ;;
    -e)
      search_engine="$2"
      shift 2
      ;;
    *)
      echo "Invalid option: $1"
      display_usage
      exit 1
      ;;
  esac
done

# Check if no options are provided
if [[ -z "$search_terms" && -z "$site_type" && -z "$results_limit" ]]; then
  display_usage
  exit 0
fi

if [[ -z "$search_terms" ]]; then
  echo "Please provide search terms or Google dorks with the -d flag"
  exit 1
fi

if [[ -z "$site_type" ]]; then
  echo "Please provide either -warez or -paste flag"
  exit 1
fi

# Split search terms by space
IFS=' ' read -ra terms <<< "$search_terms"

encoded_terms=""
operator=""
for term in "${terms[@]}"; do
  term_lower=$(echo "$term" | tr '[:upper:]' '[:lower:]')
  case "$term_lower" in
    and)
      operator="AND"
      ;;
    or)
      operator="OR"
      ;;
    *)
      encoded_term=$(urlencode "$term")
      if [[ -z "$encoded_terms" ]]; then
        encoded_terms+="\"$encoded_term\""
      else
        encoded_terms+="+$operator+\"$encoded_term\""
      fi
      ;;
  esac
done

# Generate and print search URLs based on the selected search engine
if [[ "$site_type" == "warez" ]]; then
  sites=("${warez_sites[@]}")
else
  sites=("${paste_sites[@]}")
fi

count=0
for site in "${sites[@]}"; do
  case "$search_engine" in
    google)
      echo "https://www.google.com/search?q=${encoded_terms}+site:${site}"
      ;;
    bing)
      echo "https://www.bing.com/search?q=${encoded_terms}+site:${site}"
      ;;
    yandex)
      echo "https://yandex.com/search/?text=${encoded_terms}+site:${site}"
      ;;
    *)
      echo "Invalid search engine: $search_engine"
      exit 1
      ;;
  esac
  count=$((count + 1))
  if [[ -n "$results_limit" && $count -eq $results_limit ]]; then
    break
  fi
done