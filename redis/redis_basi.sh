# DB선택
SELECT 1 

# 데이터 넣기
# key string value string
SET Hello world

# List데이터에 데이터 넣기
LPUSH my_classes_name kim
RPUSH my_classes_name kim
# 데이터 POP하기 (뺴는거여)
LPOP my_classes_name kim
RPOP my_classes_name kim
# 데이터 개수
LLEN my_classes_name kim
RLEN my_classes_name kim
# List 전체 값 반환하기
# -1은 끝까지 조회
LRANGE my_classes_name 0 -1
# TTL 남은 만료시간 확인
# 만료시간 지정
EXPIRE my_classes_name kim 3600

# SET 중복x 순서x
SADD myest member
# SET에 멤버 추가
SMEMBERS myset
# SET 특정 멤버 삭제
SREM myset member1 member2

# 데이터 가져오기
GET Hello
# 이미 키가 존재하는 경우 덮어씀
# 같은 키를 가질 수는 읎다 
SET Hello world!
# 키가 이미 존재하지 않으면 데이터를 넣음 
SET Hello world!! nx
# 지정한 시간이 사라지면 데이터가 사라진다
# 로그인 시간을 지정과 같은 기능
SET Hello world! ex 10

# 모든 Key값 조회
Keys *
# 키 삭제
DEl key명
# 모든 키 삭제
FlUSHED