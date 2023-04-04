@rem all.mk

@if exist build-cli rmdir /S /Q build-cli
@mkdir build-cli

arduino-cli compile ^
 -b "MultiX-Zinnia:modernAVR:AVRDD_noloader:01_variant=32" ^
 --output-dir build-cli/AVR64DD28 UPDI4AVR
@if errorlevel 1 goto :quit

arduino-cli compile ^
 -b "MultiX-Zinnia:modernAVR:AVRDB_noloader:01_variant=31" ^
 --output-dir build-cli/AVR128DB28 UPDI4AVR
@if errorlevel 1 goto :quit

arduino-cli compile ^
 -b "MultiX-Zinnia:megaAVR:megaAVR0_noloader:01_variant=11" ^
 --output-dir build-cli/ATmega4809 UPDI4AVR
@if errorlevel 1 goto :quit

arduino-cli compile ^
 -b "MultiX-Zinnia:megaAVR:tinyAVR012_noloader:01_variant=22" ^
 --output-dir build-cli/ATtiny1624 UPDI4AVR
@if errorlevel 1 goto :quit

:done
@echo ===
@echo OK!
@echo ===
@exit /b 0

:quit
@echo NG!
@exit /b 1
