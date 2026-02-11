# Monitoreo del patrón y frecuencia respiratoria

# Parte A
# PROCESO RESPIRATORIO

La respiración se define como el proceso mediante el cual se lleva a cabo el intercambio gaseoso a nivel celular, permitiendo la captación de oxígeno y la eliminación de dióxido de carbono. Desde el punto de vista fisiológico, este proceso comprende dos fases mecánicas principales: inhalación y exhalación.

**Inhalación:** En la fase de inhalación, el diafragma se contrae y desciende, aumentando el volumen de la cavidad torácica, favoreciendo la expansión pulmonar. De manera complementaria, los músculos intercostales se contraen, produciendo la elevación de la caja torácica y contribuyendo al aumento de dicho volumen. Este cambio volumétrico facilita la entrada de aire hacia los pulmones, permitiendo que se lleve a cabo el intercambio gaseoso en los alvéolos.

<div align="center">
  <img width="150" height="300" alt="image" src="https://github.com/user-attachments/assets/f2c14958-d8ee-480a-a226-2d600a6321a6" />
</div>


**Exhalación:** En la fase de exhalación, el diafragma y los músculos intercostales se relajan, lo que genera una disminución del volumen de la cavidad torácica. omo consecuencia, los pulmones reducen su expansión y el aire que contiene dióxido de carbono es expulsado a través de la tráquea, saliendo por la nariz o la boca. En condiciones fisiológicas normales, este proceso ocurre de manera pasiva debido a la relajación muscular y a las propiedades elásticas del tejido pulmonar.

<div align="center">
<img width="150" height="300" alt="image" src="https://github.com/user-attachments/assets/3f0d7b67-e1f7-476d-a979-71a44ba5f7af" />
</div>

# Variables físicas presentes en el proceso de respiración:

Considerando que la inhalación corresponde al ingreso de aire hacia los pulmones y la exhalación a su expulsión posterior al intercambio gaseoso, durante el proceso respiratorio se presentan variaciones en determinadas variables físicas en función del estado del organismo. Dichas variables son: La presión, el flujo y el volumen.

**Presión:**

La presión se define como la fuerza ejercida por el aire sobre las paredes de las vías respiratorias y sobre los avéolos, estructuras de los pulmones donde ocurre el intercambio gaseoso. Esta variable es fundamental para generar el gradiente necesario que permite el desplazamiento del aire hacia el interior y el exterior de los pulmones.

<div align="center">
<img width="150" height="150" alt="image" src="https://github.com/user-attachments/assets/e1f4d9c4-21b5-4088-b3e4-4e2fc5c94da0" />
</div>

**Flujo:**

El flujo corresponde a la cantidad de aire que se moviliza hacia dentro y fuera de los pulmones por unidad de tiempo, y se expresa en litros por segundo (L/s). Esta variable es determinante para garantizar una ventilación eficiente, asegurando un adecuado intercambio de oxígeno y dióxido de carbono.

<div align="center">
<img width="150" height="150" alt="image" src="https://github.com/user-attachments/assets/d8641100-de92-479b-abaa-90efee17b583" />
</div>

**Volumen:**

El volumen en el proceso de la respiración es la cantidad de aire que fluye en los pulmones de acuerdo a cada respiración, lo que proporciona información para conocer la capacidad respiratoria total y el funcionamiento pulmonar. El volumen pulmonar se clasifica en:

<div align="center">
<img width="300" height="150" alt="image" src="https://github.com/user-attachments/assets/a649f2b3-17c0-48b3-9768-d34f6d5e32dc" />
</div>

- **Volumen Tidal:** Cantidad de aire inhalada o exhalada durante una respiración normal en reposo.
- **Volumen de reserva inspiratoria:** Volumen adicional de aire que puede inhalarse adicionalmente, luego de una inhalación normal.
- **Volumen de reserva espiratoria:** Volumen adicional de aire que puede exhalarse adicionalmente despues de una exhalación normal.
- **Volumen residual:** Volumen de aire que permanece en los pulmones después de una exhalación máxima.

# MONTAJE EXPERIMENTAL
 **Sensor implementado (FSR402):**

Para llevar a cabo la práctica y poder capturar la señal respiratoria, se usó una galga extensiométrica FSR402 (Force Sensing Resistor), un sensor de tipo pasivo de dos hilos que exhibe una disminución en la resistencia cuando hay un aumento en la fuerza aplicada a la zona activa. Esto permite que el sensor sea capaz de detectar la presión o la fuerza. El sensor tiene una activación de fuerza de 0.2 N y un rango de sensibilidad de fuerza entre 0.2 N y 20 N.

<div align="center">
<img width="300" height="100" alt="image" src="https://github.com/user-attachments/assets/137f464f-ea49-474b-b991-c82ec61eb373" />
<img width="400" height="100" alt="image" src="https://github.com/user-attachments/assets/05fbc9c4-d8f0-4bbd-ae4e-3b1c0fe507f5" />
</div>

Este sensor se adaptará al sujeto de prueba mediante el uso de una liga de caucho ubicada en el pecho. En esta liga estará el FSR y a medida que el paciente respire, se capturará los momentos en que inhala y exhala, obteniendo graficamente la señal respiratoria.

<div align="center">
<img width="600" height="360" alt="image" src="https://github.com/user-attachments/assets/7aea12a1-7c06-4acb-bcd6-213238a7fb1f" />
</div>



## Parte B


# Parte C
**Procedimiento de la práctica:**

1. *Investigación teórica:* En primer lugar, se investigaron como es el proceso de respiración y cuales son las variables que influyen en él.
2. *Elección de sensor:* Luego de conocer las variables que influyen en el proceso de respiración, se conversó entre los integrantes del grupo que sensor utilizar para el desarrollo de la práctica, teniendo como principal objetivo el capturar la señal respiratoria de una persona.
3. *Diseño e implementación:* A partir del sensor seleccionado, se discutió la manera de implementación y como adaptarlo al sujeto de prueba. Aquí se definió usar una liga de caucho con el sensor y ubicarlo en el pecho para medir la presión ejercida mientras inhala y exhala.
4. *Elaboración del sistema:*
5. *Captura de la señal:* Luego de elaborar y acondicionar el sistema para capturar la señal respiratoria, se coloca el dispositivo en el paciente, se toman lecturas de acuerdo al tiempo deseado y se pide al paciente que esté en reposo o hablando/leyendo.
6. 

# ANÁLISIS DE RESULTADOS

- ¿Son los patrones respiratorios y frecuencias respiratorias iguales o diferentes en cada caso? ¿A qué se debe esto?
- ¿Cuáles serían las ventajas y desventajas de emplear múltiples sensores para el monitoreo del proceso respiratorio? ¿Cuáles podrían ser las razones?

# REFERENCIAS:

- https://www.nhlbi.nih.gov/es/salud/pulmones/beneficios
- https://www.cun.es/diccionario-medico/terminos/respiracion
- https://www.mafemedical.com/blog/variables-proceso-de-respiracion-humana/
- https://www.mactronica.com.co/sensor-de-fuerza-resistivo-fsr402
- https://files.seeedstudio.com/wiki/Grove-Round_Force_Sensor_FSR402/res/FSR402.pdf
