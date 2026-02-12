# AI Orchestration System

## Scope
- 대상: Claude Code / GPT / Gemini 간 컨텍스트 공유 시스템
- 범위: GitHub Pages 기반 STATE.md 자동 공유 + 각 AI 시스템 프롬프트 설정
- 제외: API 연동, 유료 추가 도구, AHK/PowerShell 스크립트

## Decisions
- GitHub Pages로 STATE.md를 공개 URL로 제공 (GPT/Gemini 브라우징 접근)
- Obsidian → git push → Pages 자동 배포 흐름 확정
- Claude Code = 오케스트레이터 (유일한 쓰기 권한)
- GPT = 브레인스토밍/기획 (사용제한 없음 활용)
- Gemini = 리서치/검증
- 로컬 단일 진실(SoT) + GitHub 미러 운영 원칙 유지
- 모든 AI는 두 STATE URL을 참조하여 전체 진행상황 파악
- portfolio_ui_test_v2/context/STATE.md 생성 완료 (React 19 + Vite 7 + TS 5.9) (2026-02-10)
- 단일 Obsidian 볼트(AI_작업실)로 통합 관리 확정 (2026-02-10)
- 토큰 최적화 규칙 확정: 출력 3줄 제한, 파일 재읽기 금지, 1세션=1목표 (2026-02-10)
- 세션 간 컨텍스트 연동 = TODAY/STATE 파일 기반 자동 로드 (2026-02-10)
- Auto-Logging 규칙 도입: 매 작업 완료 시 LOGS/YYYY-MM-DD.md 자동 append (2026-02-10)

## Open
- GPT/Gemini 시스템 프롬프트 적용 후 실제 Packet 흐름 테스트 필요

## Now
- 각 AI 시스템 프롬프트 적용 완료
- 포트폴리오 컨텍스트 인프라 구축 완료 (2026-02-10)
- Obsidian 볼트 통합 + CLAUDE.md 자동 커밋 규칙 적용 (2026-02-10)
- Auto-Logging + 토큰 최적화 규칙 CLAUDE.md 반영 완료 (2026-02-10)

## Next
- 전체 Packet 흐름 테스트 (GPT → Packet → Claude Code → STATE 업데이트)
- 포트폴리오 UI 구현 착수

## Key Decisions

**2026-02-12: 로그 중앙 집중화 시스템 전환**
- AI_작업실/LOGS를 단일 진실 소스로 확정
- 심볼릭 링크 구조 도입 (context-repo/context/LOGS → AI_작업실/LOGS/BY_PROJECT/orchestration)
- 자동 분기 스크립트 (split-logs.ps1) 도입
- 프로젝트 태그: [orchestration], [portfolio], [workout-bot], [cowork]
- Claude CLAUDE.md Logging 섹션 전면 개편
- Multi-Agent 구조 정립 (reader/executor/architect)
- 확장성: 무제한 프로젝트 추가 가능

**2026-02-12: STATE Push 자동화 + 토큰 효율화**
- push-state.ps1 스크립트 생성 (바탕화면 아이콘)
- AI_작업실 SoT 유지, Git은 배포용 복사본
- Claude의 Git 커밋 작업 제거 (토큰 절약)
- 로그 기록 조건 명시화: 시스템변경, 5개+파일, 새기능, Decision만 (버그/CSS/오타 제외)
- echo 직접 사용 (파일 읽기 금지) → 토큰 98% 절감
- CLAUDE.md 초압축: 1200 토큰 → 300 토큰 (75% 절감)

**2026-02-12: STATE Push 자동화 + 로그 효율화**
- push-state.ps1 + 바탕화면 아이콘 생성
- Git Hook으로 커밋 후 자동 Push 구현
- AI_작업실 SoT 유지, Git은 배포용 복사본
- 로그 효율화: 중요 작업만 기록 (시스템변경, 5개+파일, 새기능, Decision)
- echo 직접 사용 (파일 읽기 금지) → 토큰 98% 절감
- CLAUDE.md 초압축: 1200→320 토큰
- Claude STATE 업데이트 조건 명시 (사용자요청/하루1회/구조변경)
