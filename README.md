# Monitoreo del patrón y frecuencia respiratoria

# Parte A
# PROCESO RESPIRATORIO

La respiración se define como el proceso de intercambio gaseoso en las células. Esta se compone de dos fases: inhalación y exhalación.

**Inhalación:** En la fase de inhalación, el diafragma se contrae y se mueve hacía abajo, aumentando el espacio en la cavidad torácica y expandiendo los pulmones dentro de la misma. Del mismo modo, los músculos intercostales ayudan a aumentar el tamaño de la cavidad torácica, de tal manera que se contraen con el objetivo de empujar la caja torácica hacia arriba cuando una persona inhala.

<div align="center">
  <img width="150" height="300" alt="image" src="https://github.com/user-attachments/assets/f2c14958-d8ee-480a-a226-2d600a6321a6" />
</div>


**Exhalación:** En la fase de exhalación, el diafragma y los músculos intercostales se relajan, reduciendo el espacio de cavidad torácica. A medida que dicha cavidad disminuye en tamaño, los pulmones se "desinflan" y el aire con dióxido de carbono sale de los pulmones por la tráquea, exhalando por la nariz o la boca.

<div align="center">
<img width="150" height="300" alt="image" src="https://github.com/user-attachments/assets/3f0d7b67-e1f7-476d-a979-71a44ba5f7af" />
</div>

# Variables físicas presentes en el proceso de respiración:

Teniendo en cuenta que la inhalación consiste en el llenado de aire en los pulmones y la exhalación en el retiro del mismo luego de un intercambio gaseoso, existen unas variables físicas que cambian según la situación del organismo. Estas variables son la presión, el flujo y el volumen.

**Presión:**

La presión supone la fuerza que ejerce el aire sobre las paredes de los conductos respiratorios y en los alveolos, que son los pequeños sacos de aire en los pulmones donde sucede el intercambio de gases. Esta es muy importante para que el aire se mueva dentro y fuera de los pulmones.

<div align="center">
<img width="150" height="150" alt="image" src="https://github.com/user-attachments/assets/e1f4d9c4-21b5-4088-b3e4-4e2fc5c94da0" />
</div>

**Flujo:**

El flujo se refiere a la cantidad de aire que circula dentro y fuera de los pulomnes, de acuerdo a una unidad de tiempo dada en Litros/segundos. Este flujo es importante para una ventilación eficiente, lo que asegura un buen intercambio de oxigeno y dióxido de carbono en los pulmones.

<div align="center">
<img width="150" height="150" alt="image" src="https://github.com/user-attachments/assets/d8641100-de92-479b-abaa-90efee17b583" />
</div>

**Volumen:**

El volumen en el proceso de la respiración es la cantidad de aire que fluye en los pulmones de acuerdo a cada respiración, lo que proporciona información para conocer la capacidad respiratoria total y el funcionamiento de los pulmones. El volumen pulmonar se expresa de diferentes maneras, las cuales son:

<div align="center">
<img width="300" height="150" alt="image" src="https://github.com/user-attachments/assets/a649f2b3-17c0-48b3-9768-d34f6d5e32dc" />
</div>

- **Volumen Tidal:** Es el cantidad de aire que se inhala o exhala en una respiración normal en reposo.
- **Volumen de reserva inspiratoria:** Es el volumen de aire que se puede inhalar adicionalmente, luego de una inhalación normal.
- **Volumen de reserva espiratoria:** Es la cantidad de aire que se puede exhalar adicionalmente despues de una exhalación normal.
- **Volumen residual:** Se refiere al volumen de aire que permanece en los pulmones luego de una exhalación máxima.

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


# REFERENCIAS:

- https://www.nhlbi.nih.gov/es/salud/pulmones/beneficios
- https://www.cun.es/diccionario-medico/terminos/respiracion
- https://www.mafemedical.com/blog/variables-proceso-de-respiracion-humana/
- https://www.mactronica.com.co/sensor-de-fuerza-resistivo-fsr402
- https://files.seeedstudio.com/wiki/Grove-Round_Force_Sensor_FSR402/res/FSR402.pdf
