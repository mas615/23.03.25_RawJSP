for num in range(10000):
    num_str = str(num).zfill(4)  # 0으로 채워진 4자리 숫자 문자열 생성
    print(num_str)
    
    if num_str == '0003':
        break
