include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize komponent using string-sanitizer
    sanitize energi using string-sanitizer
end

fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    |some(a) => a
    |none => 0 
  end
where:
  energi-to-number("0") is 0 
  energi-to-number("30") is 30
  energi-to-number("37") is 37
end

tabell-1=transform-column(kWh-wealthy-consumer-data, 'energi', energi-to-number)
"tabell 1"
tabell-1

bil-table = table: komponent :: String, energi :: Number
  row: "bil", 50
end

bil-table
new-row = get-row(bil-table, 0)
 
fun sum-of-energi():
  
  sum(tabell-1, 'energi')
end


bil-fiks = transform tabell-1 using energi:
  energi: energi + 50
end

"test"
bil-fiks




bar-chart(tabell-1, 'komponent', 'energi')
