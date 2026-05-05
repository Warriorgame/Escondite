# HideGround v28 - Entrenamiento IA mejorado

Problema:
- La IA decía que los poderes estaban en el menú de opciones.
- Si el usuario preguntaba "como los compro", lo bloqueaba por no detectar el contexto.
- Las aclaraciones tipo "no entiendo" no usaban bien el tema anterior.

Cambios:
- Prompt de Gemma reforzado con ejemplos obligatorios.
- Prohibido indicar que los poderes están en menú de opciones.
- Añadido sistema híbrido de respuestas entrenadas para preguntas críticas.
- Preguntas sobre poderes se responden de forma precisa sin esperar a que Gemma improvise.
- Seguimiento de contexto: "como los compro", "no entiendo", "explícalo mejor" usan el tema anterior.
- Compra de poderes ahora se reconoce como tema HideGround cuando viene después de hablar de poderes.
- Privacidad también tiene respuesta entrenada.
