import requests

url = "https://elms2.skinfosec.co.kr:8110/practice/practice03/login"
cookie = {'JSESSIONID': '94280B5F6977A75A31A9633263389EAF'}

param = {"_csrf": "4d8dae2-5571-4318-9743-8bd545875f9f", "memberid": "admin", "password": "1234"}

with requests.Session() as session:
    
    req = session.post(url, params=param)  # 리다이렉션된 요청 수행
    print(req.status_code)
    print(req.headers)
    print(req.text)
