#  현재 working directory, staging area 상태 확인
git status

# .은 모든 수정/추가 사항을 add
git add .
# 특정 파일만 add할 경우 (경로까지 포함)

# commit을 통해 메시지 타이틀과 메시지 내용을 커밋이력으로 생성
git commit -m "메시지제목" -m "메시지내용"
# git commit만 입력하고 엔터시, vi 모드가 됨 -> 첫 줄: 타이틀, 두번째 줄: 내용
git commit
