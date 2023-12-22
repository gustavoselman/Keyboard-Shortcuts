#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
; Get Constant from INI file

GetConstant(Key) {
    ; Especifica el archivo INI
    ConstantsFile = constants.ini
    Path = %A_ScriptDir%\%ConstantsFile%

    ; Especifica la sección del archivo INI
    Section = Constants

    ; Establece un valor predeterminado en caso de que la clave no se encuentre
    Default = "KeyNotFound"

    ; Lee el valor desde el archivo INI 
    IniRead, OutputVar, %Path%, %Section% , %Key%, %Default% 

    ; Comprueba si se encontró un valor válido y muestra un mensaje
    if (OutputVar = "KeyNotFound") {
        MsgBox, No se encontró la clave %Key% en el archivo %ConstantsFile%.
    } else {
        return OutputVar
    }
}
