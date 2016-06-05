; tossabox.com
$TTL    3600
@   IN  SOA ns361350.ip-91-121-168.eu. root.tossabox.com. (
            2015010506 ; SERIAL
            3600; REFRESH
            15M; RETRY
            1W; EXPIRE
            600 ) ; Negative Cache TTL
;
; NAMESERVERS
;
tossabox.com. IN       NS       ns361350.ip-91-121-168.eu.
tossabox.com. IN       NS       ns.kimsufi.com.
;
; Nodes in domain
;
www       IN A         91.121.168.13
mail      IN A         91.121.168.13
ns1       IN A         91.121.168.13
smtp      IN A         91.121.168.13
pop       IN A         91.121.168.13
ftp       IN A         91.121.168.13
imap      IN A         91.121.168.13
tossabox.com.   IN  A   91.121.168.13
tossabox.com.   IN  MX  10 mail.tossabox.com.
;
; subdomains
;
*.tossabox.com. IN A 91.121.168.13
