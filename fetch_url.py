import sys

#Get the url or links from the requests
url_count={}
with open(sys.argv[1]) as file:
	for line in file:
		#Split the current line with spaces
		data = line.split(' ')
		#Split the data with tab as delimeter
		values=data[0].split('\t')
		#Get the hostname
		host = values[8].split('.')[-2]
		#Add new host
		if host not in url_count:
			url_count[host]=0
		#Keep a count of how many times a host was contacted
		url_count[host]+=1

#Finally print the unique hosts
print "------------Sites Visited-------------"
for url,count in url_count.iteritems():
	print url