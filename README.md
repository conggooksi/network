# 리눅스 명령어 익혀보기

  * pwd(print work directory)
    - 현제 사용자가 있는 디렉토리 출력

  * ls(list segments)
    - 속해 있는 곳의 파일과 디렉토리 출력
      + ex) ls -al
    - a all -> 숨겨진 파일까지
    - l long - 자세한 내용
    - S size -> 파일 크기 순
    - r reverse -> 역순으로
    - R recursive -> 하위 디렉토리
    - h human -> 보기 좋게
      + -rw-r--r-- 1 root  root    39 Jul  4 05:32 testfile
      + -rw-r--r-- : 퍼미션
      + r: 읽기, w: 쓰기, x: 실행
      + rwxrwxrwx
      + 421421421
      + 퍼미션: 644
  * chmod "num" "file" (권한 변경도 가능)
    - ex) chmod 777 ./testfile

  * chown -> 소유자/소유그룹 변경
  * chown [변경할 소유자][변경할 파일]

소유자그룹공개
소유자: rw
그룹: r
공개: r

1: 링크수
root: 소유자
root: 소유그룹
39: 용량
Jul  4 05:32: 생성날짜
testfile: 파일 이름

cd "segments"
change directory

cd / ( / -> root/ )
cd ~ (home)
cd test1/test1/test1
cd . (현재 디렉토리)
cd .. (이전 디렉토리)

sudo "val"
계정 변경 명령어
sudo su (관리자 권한)

mkdir "name"
make directory
mkdir test

rmdir "name"
remove directory
mdir "name"

ifconfig -- network tool

vi에디터를 이용
linux 기본 에디터
vi "파일"

기본모드 : esc
insert모드: i
: -> 명령모드
w: 저장
q: 나가기
!: 강제

vi /etc/netplan/00~

test3 - 121.126.223.242

netplan apply
netplan 설정 적용

cat "내용"
내용 확인 가능

head "파일"
-n "number" 용량
ex) head -n 3 testfuke -> testfile의 위 세줄 출력

tail "파일"
-n "number" 용량
ex) tail -n 3 testfile -> testfile의 아랫 세줄 출력

cp (copy)
cp "복사할 파일" "복사 후 파일"

mv (move)
mv "이동할 파일" "이동후 파일"
이름 변경으로 종종 사용

history

grep -> parameter같은
( | <- '파이프'라고 부른다 )
output | grep "내용"
-> output 중에 내용과 일치하는 부분만 output 하라

find -> 검색 명령어
find [path] -option 
find [path] -name "이름" 
ex) find / -name testfile

sort -> 정렬
사전 또는 역순으로 output 정렬 가능 -> 로그 전처리 할 때 주로 사용

  * 모니터링 명령어
    - top : 간단한 모니터링 프로그램
    - free : 메모리 모니터링
    - netstat -nltp -> 가장 흔히 사용하는 포트 확인 프로그램
      + n: IP, port 번호만 호출
      + l: 대기하는 소켓 호출
      + t: tcp protocol만
      + p: PID 출력
    - df: 디스크 모니터링

  * ifconfig: 네트워크 tool
  * awk [option] [awk program] [argument]
    - -F: 필드 문자 지정
    - -f: 프로그램 파일 경로 지정
