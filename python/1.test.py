import requests

url = "http://3.36.127.85:8000/SQL3/board.jsp"
cookie = {'JSESSIONID': '5DB16415D7EB29B84BD75497CB9A9473'} # 쿠키 값 넣기

req = requests.get(url, cookies = cookie)
print(req.status_code)