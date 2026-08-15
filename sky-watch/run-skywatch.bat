@echo off
cd /d D:\Loop-Engineering\agentfactory-labs\crash-course\loop-eng\sky-watch
set PYTHONIOENCODING=utf-8
python .claude\skills\sky-watch\scripts\skywatch.py --days 1 >> skywatch-log.txt 2>&1