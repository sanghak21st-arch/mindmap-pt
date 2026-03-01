#!/bin/bash
# mindmap-pt GitHub 배포 스크립트
# GitHub 저장소 만든 후 USERNAME만 수정해서 실행!

USERNAME="sanghak21st-arch"  # GitHub 사용자명

cd /Users/apple/.openclaw/workspace/mindmap-pt

git remote add origin https://github.com/$USERNAME/mindmap-pt.git
git branch -M main
git push -u origin main

echo "✅ Push 완료!"
echo ""
echo "이제 GitHub에서 Settings > Pages 로 이동해서:"
echo "1. Source: Deploy from a branch 선택"
echo "2. Branch: main, /(root) 선택"
echo "3. Save 클릭"
echo ""
echo "5분 후 https://$USERNAME.github.io/mindmap-pt 에서 접속 가능!"
