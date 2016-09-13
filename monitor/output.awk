#!/bin/awk -f

BEGIN{
    print "STATS MONITOR"
    FS="\n"
    }
#cpu freqs
/CPU MHz: /{
    print "CPU FREQUENCIES"
    gsub(/CPU MHz:/,"");
    gsub(/ */,"")
    print $1 "MHz"
  }

#cpu temps

  END{

  }
