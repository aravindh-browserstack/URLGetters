Set-ExecutionPolicy UnRestricted
cd  $env:APPDATA\Mozilla\Firefox\Profiles\*\ 
.\sqlite3 .\places.sqlite "SELECT url FROM moz_places,moz_historyvisits WHERE visit_count > 0 AND moz_places.id == moz_historyvisits.place_id" | Select-Object -Last 1
