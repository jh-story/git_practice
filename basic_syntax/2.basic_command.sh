#  현재 working directory, staging area 상태 확인
git status

# .은 모든 수정/추가 사항을 add
git add .
# 특정 파일만 add할 경우 (경로까지 포함)
git add testfolder/test1.txt

# commit을 통해 메시지 타이틀과 메시지 내용을 커밋이력으로 생성
git commit -m "메시지제목" -m "메시지내용"
# git commit만 입력하고 엔터시, vi 모드가 됨 -> 첫 줄: 타이틀, 두번째 줄: 내용
git commit


# commit 이력 확인
git log
git log --oneline # 간결하게 확인
# head 하단의 로그만 보이는 것이 아니라, 모든 commit 이력을 조회
# head: 현재 checkout하고 있는 commitID를 의미
git log --all

# 원격저장소로 업로드
git push origin 브랜치명
# 충돌 발생시 충돌을 무시하고, 로컬을 기준으로 원격에 덮어쓰기
git push origin 브랜치명 --force

# 특정 commit ID로의 전환
git checkout 커밋ID
# 특정 branch로의 전환
git checkout 브랜치명

# pull은 원격의 변경사항을 local로 내려받는 것 (fetch+merge)
git pull origin main

# fetch는 변경사항을 local로 가져오되, 병합은 하지 않는 것
git fetch origin main
# 만약 모든 브랜치의 변경사항을 가져오려면
git fetch --all

# 버전별(commit간) 비교 명령어
git diff A B
git diff commitID1 commitID2
git diff 브랜치1 브랜치2

# 가장 최신의 commit 취소
git reset head~1
git reset head^

# 이미 push된 commit사항 되돌리는 commitID 생성 (완전한 취소X)
git revert commitID

# 작업중인 사항을 임시 저장
git stash
# 마지막으로 저장한 사항을 꺼내서 적용
git stash pop
# 저장한 작업 목록 조회
git stash list
# 저장 목록 전체 삭제
git stash clear

# tag 관련 명령어
# 가장 최신의 commit에 tag가 명시됨
git tag 태그버전명(v1.1)
# tag release: 코드에 commit, push와 상관없이 별개로 작업 진행해줘야 함
git push origin 태그버전명 
# 태그 목록 조회
git tag

# 브랜치 생성
# 현재 checkout되어있는 브랜치를 기준으로 브랜치 생성
git branch 브랜치명

# 새로운 작업 시작시에 main을 최신화한 후에 main을 기준으로 branch 생성 
