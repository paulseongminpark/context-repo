#  STATE — AI Orchestration System

## 지금 상태 (2026-02-12 기준)

**완료**
- STATE 자동 Push (바탕화면 아이콘 → Git Hook)
- 로그 중앙화 (AI_작업실/LOGS + split-logs.ps1)
- 토큰 효율화 (CLAUDE.md 320토큰)

**다음 할 일**
- Packet 흐름 전체 테스트 (GPT → Claude → STATE)
- 포트폴리오 UI 착수

**막힌 것**
- GPT/Gemini 시스템 프롬프트 실전 테스트 안 해봄

---

## 시스템 작동 방식

**데이터 흐름**
AI_작업실 (SoT)  
↓ (수동: 바탕화면 아이콘)  
Git 로컬  
↓ (자동: Git Hook)  
GitHub  
↓ (자동: Pages)  
공개 URL → GPT/Gemini 읽기


**역할**
- Claude: 실행 + 쓰기 (유일)
- GPT: 사고 (읽기만)
- Gemini: 검증 (읽기만)

**핵심 원칙**
- SoT = AI_작업실
- Git = 미러
- 중요한 것만 기록
- 자동화 > 수동

---

## 과거 결정

**2026-02-12**
- 로그: AI_작업실/LOGS 중앙화, 프로젝트별 자동 분기
- STATE: push-state.ps1 + Git Hook, Claude는 커밋만
- 효율: echo 사용(재읽기 금지), CLAUDE.md 75% 압축

**2026-02-10**
- Obsidian 단일 볼트 통합
- Auto-Logging 도입
- 출력 3줄 제한 규칙
