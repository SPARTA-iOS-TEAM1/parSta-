# <parSta Project>
Team Name: 저희이제뭐하조?
Team Leader: 장상경
Team Member: 김상민, 박채현

## 1. 프로젝트 개요
- ProjectName: parSta!
- ProjectPurpose: Swift 입문자들이 쉽게 배우고, 퀴즈와 사전 기능을 통해 학습 동기를 유지할 수 있는 서비스 제공
- Target: Swift 학습을 시작하는 입문자
- CoreFunctions:
    1) Daily Quiz
    - **목적:** 매일 새로운 퀴즈를 통해 학습자가 실력을 점검하고, 문제 풀이를 통해 경험치를 획득하며 레벨업 가능
    - **구현 방식:**
        - **DB에서 퀴즈 불러오기:** 매일 새로운 퀴즈 데이터를 서버(DB)에서 불러와 사용자가 퀴즈를 풀 수 있도록 제공.
        - **경험치 및 레벨업 시스템:** 퀴즈를 풀고, 정답을 맞힐 때마다 경험치를 획득하며, 누적 경험치에 따라 레벨이 올라가는 구조.
        - **문제 형식:** 객관식과 서답형 문제를 혼합하여 제공.
        - **통계 기능:** 사용자가 푼 문제, 정답률 등을 기록하고 확인할 수 있는 기능.
        
    2) Dictionary
    - **목적:** Swift에 대한 모든 정보를 저장하고, 쉽게 접근할 수 있는 사전 기능을 구현.
    - **구현 방식:**
        - **사전 데이터:** Swift 관련 개념과 용어, 함수 및 문법 등을 포함한 데이터베이스 구축.
        - **검색 기능:** 사용자가 검색창에서 특정 키워드를 입력하면 해당 키워드와 관련된 내용을 빠르게 찾아볼 수 있도록 구현.
        - **북마크 기능:** 중요한 항목을 저장할 수 있으며, 북마크한 내용만을 따로 확인할 수 있는 기능 제공.

    3) Bookmark
    - **목적:** 사용자가 필요할 때 북마크한 항목을 모아서 볼 수 있도록 지원.
    - **구현 방식:**
        - **북마크 저장:** 사전 항목 중 중요하거나 자주 참고할 내용을 사용자가 북마크할 수 있도록 구현.
        - **북마크 탭:** 별도의 탭에서 북마크한 항목만 확인할 수 있으며, 검색 기능과도 연동.

***
