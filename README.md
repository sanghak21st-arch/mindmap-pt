# MindMap PT v2.0 (PWA)

프레젠테이션용 마인드맵 도구 - PWA(Progressive Web App) 버전

## 📱 PWA란?

**Progressive Web App** - 웹사이트인데 앱처럼 설치해서 쓸 수 있습니다!

### 장점
- ✅ **모든 플랫폼 지원** (iOS, Android, Windows, Mac, Linux)
- ✅ **오프라인 작동** (처음 설치 후 인터넷 없이 사용 가능)
- ✅ **별도 설치 불필요** (브라우저에서 바로 실행)
- ✅ **홈 화면에 추가** 가능 (앱처럼 사용)

## 📁 폴터 구조

```
mindmap-pt/
├── index.html              # 메인 앱
├── manifest.json           # PWA 설정
├── service-worker.js       # 오프라인 캐싱
├── assets/
│   └── icons/              # 앱 아이콘
│       ├── icon-192.png
│       └── icon-512.png
└── data/                   # 데이터 저장소
    ├── mindmap.json
    └── files/
```

## ✅ 구현된 기능 (v2.0)

### 🎨 테마 시스템
- **Professional** (기본): 블루 계열
- **Dark**: 다크 모드
- **Warm**: 오렌지 계열
- **Nature**: 그린 계열

### 🗺️ 마인드맵 기능
- ✅ 노드 추가/삭제/편집
- ✅ 무제한 계층 구조
- ✅ 펼치기/접기
- ✅ **드래그 앤 드롭**으로 노드 이동

### 📎 파일 첨부 및 뷰어
- ✅ PDF (PDF.js 실제 렌더링)
- ✅ HTML (iframe)
- ✅ 이미지 (PNG, JPG, GIF 등)
- ✅ 마크다운 (렌더링된 HTML)
- ✅ 텍스트 파일

### 🖥️ 뷰어 기능
- ✅ 모달 크기 자유 조절
- ✅ **폭/높이 맞춤**
- ✅ 줌 인/아웃
- ✅ **드로잉 레이어** (펜, 형광펜, 지우개)

### 💾 데이터 관리
- ✅ **ZIP 저장/불러오기** (mindmap.json + files/)
- ✅ **Undo/Redo** (Ctrl+Z / Ctrl+Shift+Z)
- ✅ **자동 저장** (File System API)
- ✅ **키보드 단축키**

### ⌨️ 단축키
| 단축키 | 기능 |
|--------|------|
| Ctrl+Z | Undo |
| Ctrl+Shift+Z | Redo |
| Ctrl+Y | Redo |
| Ctrl+S | 저장 |
| Ctrl+N | 새 노드 |
| Delete | 노드 삭제 |
| Escape | 모달 닫기 |
| ? | 단축키 도움말 |

## 🚀 사용법

### 방법 1: GitHub Pages로 접속 (추천)

```
1. 브라우저에서 https://yourusername.github.io/mindmap-pt 접속
2. 주소창 오른쪽 "설치" 아이콘 클릭 (또는 브라우저 메뉴 → "홈 화면에 추가")
3. 홈 화면에 아이콘이 생성됨!
4. 이후 오프라인에서도 사용 가능
```

### 방법 2: 로컬 서버 실행

```bash
# Python 3
python3 -m http.server 8000

# Node.js (http-server 설치 필요)
npx http-server

# PHP
php -S localhost:8000
```

그 후 브라우저에서 `http://localhost:8000` 접속

### 방법 3: VS Code Live Server
VS Code 확장 프로그램 "Live Server" 설치 후 `index.html` 우클릭 → "Open with Live Server"

## 💾 데이터 저장/불러오기

### 저장
1. 💾 **저장** 버튼 클릭
2. `mindmap.zip` 다운로드 (mindmap.json + files/ 포함)

### 불러오기
1. 📂 **불러오기** 버튼 클릭
2. 이전에 저장한 `mindmap.zip` 선택
3. 자동으로 마인드맵 + 첨부 파일 복원

## 📤 GitHub Pages 배포 방법

```bash
# 1. GitHub 저장소 생성 (예: mindmap-pt)

# 2. 로컬 폴터 초기화
cd mindmap-pt
git init
git add .
git commit -m "Initial commit"

# 3. GitHub 연결
git remote add origin https://github.com/yourusername/mindmap-pt.git
git push -u origin main

# 4. GitHub 저장소 설정 → Pages → Source: Deploy from branch → main: /root
# 5. https://yourusername.github.io/mindmap-pt 에서 접속!
```

## ⚠️ 알려진 문제

1. **iOS Safari**: File System Access API 제한으로 자동 저장 대신 수동 저장 사용
2. **파일 첨부 용량**: 큰 파일(100MB+)은 ZIP 생성이 느려질 수 있음

## 🛠️ 개발 환경

- React 18
- Tailwind CSS
- PDF.js
- JSZip
- FileSaver.js
- PWA (Service Worker, Manifest)

---
*Version 2.0 PWA - 2025.02.26*
