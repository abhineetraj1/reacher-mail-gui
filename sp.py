import requests
import sys

token = sys.argv[len(sys.argv)-1]
pp=[]
def verify(email, token):
	h={"content-type":"application/json","authorization":token}
	j={"to_email":email}
	response = requests.post("https://api.reacher.email/v0/check_email", json=j, headers=h)
	return str(response.json().get("is_reachable"))

def chea():
	nn=[]
	lt=str(open("cache","r").read().replace("{\\rtf1\\ansi\\ansicpg1252\\deff0\\deflang1033{\\fonttbl{\\f0\\fnil\\fcharset0 Arial;}}\n\\viewkind4\\uc1\\pard\\fs24 ","").replace("\n\\par }\n\x00","").replace("\n\\par","\n").replace("\n ","\n")).split("\n")
	#lt=str(open("cache","r").read()).split("\n")
	for i in lt:
		p = verify(i,lt[1])
		print(p)
		if (p == "invalid"):
			n=""
		elif (p == None):
			nn.append("Too many requests this month. Upgrade your plan")
			break
		elif (p == "None"):
			nn.append("Too many requests this month. Upgrade your plan")
			break
			n=""
		else:
			pp.append(i)
	n=""
	if (len(nn) > 1):
		n=nn[0]
	for i in pp:
		n=n+"\n"+i
	open("cache","w").write(n)

chea()
open("cachex","w").write("")
