# proxy-management
Файл proxy.vbs - открывает диалоговое окно, а enable.vbs и disable.vbs включают и выключают напрямую.
Если нужно использовать несколько фвресов прокси, то нужно изменить параметры значений в:
objShell.RegWrite RegLocate,"0.0.0.0:00","REG_SZ"
