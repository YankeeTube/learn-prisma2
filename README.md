# learn-prisma2
Prisma2의 학습을 진행하기 위해 제공됨.  


저장소 없이 진행하기
---
*  [양키와 Prisma2(프리즈마) 시작하기 #.01 Database 설치](https://gmyankee.tistory.com/266)  
  
## 작업 환경 정보
```bash
# lsb_release -a
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 18.04.3 LTS
Release:	18.04
Codename:	bionic

# docker -v
Docker version 18.09.7, build 2d0083d

# docker-compose -v
docker-compose version 1.24.1, build 4667896b
```  
  
## 저장소로 시작하기
다음 명령을 사용해 현재 저장소를 복제하세요!  
```git clone https://github.com/YankeeTube/learn-prisma2.git && cd learn-prisma2```  

docker와 docker-compose가 설치되어 있지 않다면 다음 명령을 실행하세요!  
```chmod +x install.sh && sudo ./install.sh```
  
다음 명령을 실행하여 도커 컴포즈를 이용해 mysql을 설치합니다.  
```sudo docker-compose -f prisma2/docker-compose.yml up -d```  
<br/>
#### MySQL 정보
> Host IP: <YOUR IP>  
> Port: 3306  
> username: root  
> password: learn1234!  
  
## Reference
[Prisma2 Repo](https://github.com/prisma/prisma2)
