; Get Constant from INI file

; Especifica el archivo INI
IniFile = config.ini
Path = %A_ScriptDir%\%IniFile%

; Especifica la sección y la clave que deseas leer
Section = Settings
Key = name

; Establece un valor predeterminado en caso de que la clave no se encuentre
Default := "ValorPredeterminado"

; Lee el valor desde el archivo INI
IniRead, OutputVar, %Path%, Settings, nombre, % Default

; Comprueba si se encontró un valor válido y muestra un mensaje
if (OutputVar = "ValorPredeterminado") {
    MsgBox, La clave %Key% no se encontró en la sección %Section% del archivo INI.
} else {
    MsgBox, El valor de la clave "%Key%" es "%OutputVar%".
}
