#!/bin/awk -f

BEGIN{
    print "STATS MONITOR"
    FS="\n"
    check=0
    }
#cpu freqs
/CPU MHz: /{
    print "CPU FREQUENCIES"
    gsub(/CPU MHz:/,"");
    gsub(/ */,"")
    print "\t*avg: " $1 "MHz"

  }

#cpu temps
/^[1-9][1-9][0-9][0-9][0-9]/ {
  print "CPU TEMP"
  print "\t*temp: " $1 " °C"
}



/Mem: */ {
  gsub(/Mem: */, "");
if(check==0) {
 FS=" "
 print "\t*mem:\t" $2"\t" $3 "\t" $7
  }
 check=1
}

/^Swap: */ {
  FS=" "
  print "\t*swap:\t" $2 "\t" $3 "\t" $7
}


  END{

  }
