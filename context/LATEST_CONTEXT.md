# LATEST_CONTEXT — context-repo
Updated: 2026-02-09 19:45

## STATE Summary
- 운영 원칙 확정: 로컬 단일 진실 + GitHub 미러
- sync_snapshot.ps1에서 git 로직 전부 제거, 시간 1줄 + STATE.md만 생성
- inject_snapshot.ahk: RunWait → FileRead → Ctrl+V 파이프라인 확정

## Recent EVENTS
- [19:45] 로컬 SoT 운영 원칙 5건 Decision 확정
- [19:45] sync_snapshot.ps1 git 로직 제거 Decision
- [19:45] GitHub 복구 절차 문서화 Pending
- [19:45] SNAPSHOT 헤더 정리 옵션 Pending

## Current Focus
- Goal: Ctrl+Alt+V로 최신 STATE.md 즉시 공유 (git pull 의존 제거)
- DoD:
  - sync_snapshot.ps1 git 로직 제거 완료
  - AHK Reload → Ctrl+Alt+V 정상 동작 확인
  - commit+push로 repo Clean 마감
