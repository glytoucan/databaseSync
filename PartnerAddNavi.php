<?php

if( $argc != 4 ){
    echo "missing data: ContributorID APIKey CSV ".PHP_EOL;
    echo "php PartnerAddNavi.php ContributorID APIKey CSVFILE".PHP_EOL;
    exit(0);
}


$ContributorID = $argv[1];
$APIKey = $argv[2];
$CSV = $argv[3];


$f = fopen($CSV, "r");

while (($data = fgetcsv($f)) !== FALSE) {
  if(count($data) == 2) {
    $cmd = './curlPartnerAdd.sh '.$ContributorID." ".$APIKey." ".$data[0]." ".$data[1];
    echo exec($cmd);
  }
}
fclose($f); 
?>
