from html.parser import HTMLParser
import sys
import urllib.request

# In Jenkins we'll need to pass in a url i.e. python fact_check.py <url>
# server_url = sys.argv[1]

class MyHTMLParser(HTMLParser):
    def handle_starttag(ramzi, tag, attrs):
        print("Encountered a start tag:", tag)

with urllib.request.urlopen('http://python.org/') as response:
    html = response.read()

parser = MyHTMLParser()
parser.feed(html.decode("ascii"))
