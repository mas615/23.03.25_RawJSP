import requests
from bs4 import BeautifulSoup

#url = "https://elms2.skinfosec.co.kr:8110/practice/practice03/login?error"
url2 = "https://elms2.skinfosec.co.kr:8110/practice/practice03/login"
cookie = {'JSESSIONID': 'BE9DC224E3A8957BE8F08A929EFBD927'} # 쿠키 값 넣기
param = {"_csrf": "502b2f4d-80c1-40b3-a4fe-5b974157cd10","memberid": "admin","password": "1234" }
req2 = requests.post(url2, data = param, cookies = cookie)
print('스테이터스코드 : ', req2.status_code)
#print(req2.text)
print('세션아이디 : ',(req2.history[0].headers['Set-Cookie'])[11:43])

# req2.text에 포함된 HTML을 BeautifulSoup으로 파싱합니다.
soup = BeautifulSoup(req2.text, 'html.parser')

# id가 'abc'인 input 태그를 찾습니다.
#input_tag = soup.find('input', name='_csrf')
input_tag = soup.find('input', attrs={'name': '_csrf'})

# input 태그의 value 속성 값을 가져옵니다.
value = input_tag.get('value')
print('csrf토큰 :',value)
print('길이:',len(req2.text))
