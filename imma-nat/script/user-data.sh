#!/bin/bash

echo 'IyEvdXNyL2Jpbi9lbnYgYmFzaAoKaWYgW1sgIiQxIiAhPSAiZXRoMSIgXV07IHRoZW4gZXhpdCAwOyBmaQoKZnVuY3Rpb24gbWFzazJjZHIgewogICMgQXNzdW1lcyB0aGVyZSdzIG5vICIyNTUuIiBhZnRlciBhIG5vbi0yNTUgYnl0ZSBpbiB0aGUgbWFzawogIGxvY2FsIHg9JHsxIyMqMjU1Ln0KICBzZXQgLS0gMF5eXjEyOF4xOTJeMjI0XjI0MF4yNDheMjUyXjI1NF4gJCgoICgkeyMxfSAtICR7I3h9KSoyICkpICR7eCUlLip9CiAgeD0kezElJSQzKn0KICBlY2hvICQoKCAkMiArICgkeyN4fS80KSApKQp9CgpmdW5jdGlvbiBtYWluIHsKICBTVUJORVRfQ0lEUj0iJChuZXRzdGF0IC1ybiB8IGF3ayAnJE5GID09ICJldGgwIiAmJiAkNCA9PSAiVSIgeyBwcmludCAkMSB9JykvJChtYXNrMmNkciAiJChuZXRzdGF0IC1ybiB8IGF3ayAnJE5GID09ICJldGgwIiAmJiAkNCA9PSAiVSIgeyBwcmludCAkMSB9JykiKSIKICBJUF9HQVRFV0FZPSIkKGJhc2ggLWMgJ2VjaG8gJDEgJDIgJDMgJCgoICQ0ICsgMSApKScgJycgJChuZXRzdGF0IC1ybiB8IGF3ayAnJE5GID09ICJldGgwIiAmJiAkNCA9PSAiVSIgeyBwcmludCAkMSB9JyB8IHNlZCAncyNcLiMgI2cnKSB8IHNlZCAncyMgIy4jZycpIgogIElQX0FERFJFU1M9IiQoaWZjb25maWcgZXRoMCB8IGF3ayAnTlIgPT0gMiB7cHJpbnQgJDJ9JyB8IGN1dCAtZDogLWYyKSIKICBlY2hvIDEgcnQyID4+ICAvZXRjL2lwcm91dGUyL3J0X3RhYmxlcwoKICBpcCByb3V0ZSBhZGQgJHtTVUJORVRfQ0lEUn0gZGV2IGV0aDAgc3JjICR7SVBfQUREUkVTU30gdGFibGUgcnQyCiAgaXAgcm91dGUgYWRkIGRlZmF1bHQgdmlhICR7SVBfR0FURVdBWX0gZGV2IGV0aDAgdGFibGUgcnQyCgogIGlwIHJ1bGUgYWRkIGZyb20gJHtJUF9BRERSRVNTfS8zMiB0YWJsZSBydDIKICBpcCBydWxlIGFkZCB0byAke0lQX0FERFJFU1N9LzMyIHRhYmxlIHJ0MgoKICBzeXNjdGwgLXEgLXcgbmV0LmlwdjQuaXBfZm9yd2FyZD0xIG5ldC5pcHY0LmNvbmYuZXRoMS5zZW5kX3JlZGlyZWN0cz0wIG5ldC5pcHY0LmNvbmYuZXRoMC5zZW5kX3JlZGlyZWN0cz0xCgogIGlwdGFibGVzIC10IG5hdCAtRCBQT1NUUk9VVElORyAtbyBldGgwIC1qIE1BU1FVRVJBREUKICBpcHRhYmxlcyAtdCBuYXQgLUMgUE9TVFJPVVRJTkcgLW8gZXRoMSAtaiBNQVNRVUVSQURFIHx8IGlwdGFibGVzIC10IG5hdCAtQSBQT1NUUk9VVElORyAtbyBldGgxIC1qIE1BU1FVRVJBREUKCiAgaXAgcm91dGUgZGVsIGRlZmF1bHQgdmlhICR7SVBfR0FURVdBWX0KfQoKbWFpbiAiJEAiCg==' \
  | base64 -d > /sbin/ifup-local
chmod 755 /sbin/ifup-local
