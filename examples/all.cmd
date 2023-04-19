@rem all.mk

@if exist build-cli rmdir /S /Q build-cli
@mkdir build-cli

@rem AVR64DD28
arduino-cli compile ^
 -b "MultiX-Zinnia:modernAVR:AVRDD_noloader:01_variant=32" ^
 --output-dir build-cli/AVR64DD28 UPDI4AVR
@if errorlevel 1 goto :quit

@rem AVR128DB28
arduino-cli compile ^
 -b "MultiX-Zinnia:modernAVR:AVRDB_noloader:01_variant=31" ^
 --output-dir build-cli/AVR128DB28 UPDI4AVR
@if errorlevel 1 goto :quit

@rem AVR64DD14
arduino-cli compile ^
 -b "MultiX-Zinnia:modernAVR:AVRDD_noloader:01_variant=54" ^
 --output-dir build-cli/AVR64DD14 UPDI4AVR
@if errorlevel 1 goto :quit

@rem ATmega4809
arduino-cli compile ^
 -b "MultiX-Zinnia:megaAVR:megaAVR0_noloader:01_variant=11" ^
 --output-dir build-cli/ATmega4809 UPDI4AVR
@if errorlevel 1 goto :quit

@rem ATtiny1624
arduino-cli compile ^
 -b "MultiX-Zinnia:megaAVR:tinyAVR012_noloader:01_variant=22" ^
 --output-dir build-cli/ATtiny1624 UPDI4AVR
@if errorlevel 1 goto :quit

@rem ATtiny3226
arduino-cli compile ^
 -b "MultiX-Zinnia:megaAVR:tinyAVR012_noloader:01_variant=11" ^
 --output-dir build-cli/ATtiny3226 UPDI4AVR
@if errorlevel 1 goto :quit

:done
@echo ===
@echo OK!
@echo ===
@exit /b 0

:quit
@echo NG!
@exit /b 1
