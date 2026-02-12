# Monitoreo del patrón y frecuencia respiratoria

## Parte A
### PROCESO RESPIRATORIO

La respiración se define como el proceso mediante el cual se lleva a cabo el intercambio gaseoso a nivel celular, permitiendo la captación de oxígeno y la eliminación de dióxido de carbono. Desde el punto de vista fisiológico, este proceso comprende dos fases mecánicas principales: inhalación y exhalación.

**Inhalación:** En la fase de inhalación, el diafragma se contrae y desciende, aumentando el volumen de la cavidad torácica, favoreciendo la expansión pulmonar. De manera complementaria, los músculos intercostales se contraen, produciendo la elevación de la caja torácica y contribuyendo al aumento de dicho volumen. Este cambio volumétrico facilita la entrada de aire hacia los pulmones, permitiendo que se lleve a cabo el intercambio gaseoso en los alvéolos.

<div align="center">
  <img width="150" height="300" alt="image" src="https://github.com/user-attachments/assets/f2c14958-d8ee-480a-a226-2d600a6321a6" />
</div>


**Exhalación:** En la fase de exhalación, el diafragma y los músculos intercostales se relajan, lo que genera una disminución del volumen de la cavidad torácica. como consecuencia, los pulmones reducen su expansión y el aire que contiene dióxido de carbono es expulsado a través de la tráquea, saliendo por la nariz o la boca. En condiciones fisiológicas normales, este proceso ocurre de manera pasiva debido a la relajación muscular y a las propiedades elásticas del tejido pulmonar.

<div align="center">
<img width="150" height="300" alt="image" src="https://github.com/user-attachments/assets/3f0d7b67-e1f7-476d-a979-71a44ba5f7af" />
</div>

### Variables físicas presentes en el proceso de respiración:

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

### MONTAJE
 **Sensor implementado (FSR402):**

Para la realización de la práctica y la adquisición de la señal respiratoria, se empleó el sensor resistivo FSR402 (Force Sensitive Resistor), Este dispositivo corresponde a un sensor activo de dos terminales cuya resistencia eléctrica disminuye conforme aumenta la fuerza aplicada sobre su área activa. Esto permite utilizar el sensor para la detección de variaciones de presión o fuerza mecánica, como las generadas durante el movimiento torácico asociado al proceso respiratorio. El FSR402 presenta un umbral de activación aproximado de 0,2 N y un rango de sensibilidad comprendido entre 0,2 N y 20 N, lo que lo hace adecuado para registrar cambios de fuerza dentro de ese intervalo operativo.

<div align="center">
<img width="300" height="100" alt="image" src="https://github.com/user-attachments/assets/137f464f-ea49-474b-b991-c82ec61eb373" />
<img width="400" height="100" alt="image" src="https://github.com/user-attachments/assets/05fbc9c4-d8f0-4bbd-ae4e-3b1c0fe507f5" />
</div>

Este sensor será adaptado al sujeto de prueba mediante el uso de un cinturón colocado al rededor del tórax. El FSR será fijado sobre dicho cinturón, de manera que las variaciones mecánicas asociadas a la expansión y contracción torácica durante el ciclo respiratorio generen cambios en la fuerza aplicada sobre su superficie activa. A medida que el sujeto inhale y exhale, estas variaciones serán registradas por el sensor, permitiendo la adquisición y posterior representación gráfica de la señal respiratoria correspondiente.

<div align="center">
<img width="400" height="360" alt="image" src="https://github.com/user-attachments/assets/7aea12a1-7c06-4acb-bcd6-213238a7fb1f" />
</div>

El sistema de acondicionamiento y digitalización consta básicamente de un circuito divisor de voltaje, donde el FSR actúa como resistencia de entrada y la resistencia de salida es una resistencia fija de 3 kΩ (RFout). Además, se incluye otra resistencia en serie de 300 Ω (Rfin) antes del FSR, con el fin de limitar ligeramente el voltaje de salida.

Cuando se aplica presión sobre el sensor, la resistencia del FSR disminuye, lo que provoca un aumento del voltaje en la salida. Por el contrario, al reducirse la presión, la resistencia del sensor aumenta significativamente, haciendo que el voltaje de salida disminuya prácticamente a cero.

El voltaje de salida del divisor de voltaje se calcula como:

$$
V_{out} = V_{cc} \cdot \frac{R_{Fout}}{R_{Fout} + R_{FSR} + R_{fin}}
$$

$$
\text{Donde: } R_{Fout} = 3\,k\Omega, R_{fin} = 300\,\Omega
$$

$$
\text{Si } R_{FSR} \text{ aumenta} \Rightarrow V_{out} \text{ disminuye}
$$

$$
\text{Si } R_{FSR} \text{ disminuye} \Rightarrow V_{out} \text{ aumenta}
$$

Posteriormente, el voltaje de salida del divisor de voltaje es medido por el ADC de un microcontrolador, específicamente un ESP32. Este microcontrolador, mediante comunicación serial, transmite los datos hacia un PC, donde se realiza la adquisición y procesamiento de las señales utilizando MATLAB.
```cpp
void setup() {
  Serial.begin(115200);
}

float v;

void loop() {
  v = analogRead(34);
  Serial.println(v);  
  delay(10);
}
```
<div align="center">
<img width="500" height="667" alt="image" src="https://github.com/user-attachments/assets/a81954af-127a-4d3e-a223-b332c35dd01c" />
</div>

Anteriormente, se verificó el correcto funcionamiento de la comunicación serial utilizando el Serial Plotter de Arduino, confirmando que los datos del sensor se transmiten adecuadamente.

## Parte B
### Adquisición

El código recibe un flujo de datos mediante comunicación serial desde una placa ESP32 a través del puerto COM4. Primero le pide al usuario que ingrese el tiempo de medición deseado; después de eso, abre una gráfica donde se pueden observar los datos en tiempo real mientras se adquiere la señal. Durante el bucle de adquisición se leen los valores enviados por el ADC en bits y se convierten a voltaje usando la relación entre el valor leído, el voltaje de referencia y la resolución del ADC, por lo que la gráfica que se muestra corresponde a voltaje vs tiempo.

$$
V = \frac{\text{bits} \cdot V_{ref}}{ADC}
$$

$$
V = \frac{\text{bits} \cdot 5}{4095}
$$

```matlab
clc; clear; close all

s = serialport("COM4",115200);
configureTerminator(s,"LF");
flush(s);

Vref = 5;
ADC  = 4095;

N = 300;
bufferV = nan(1,N);
bufferT = nan(1,N);

%% Reposo
x = input("Ingrese el tiempo deseado de lectura: ");

tiempo = [];
voltaje = [];

figure(1);
h = plot(bufferT, bufferV, 'b', 'LineWidth', 2);
grid on
xlabel("Tiempo (s)")
ylabel("Voltaje (V)")
title("Señal Respiratoria en Reposo");
ylim([0 5])    

tic
while toc < x
    if s.NumBytesAvailable > 0
        bits = str2double(readline(s));
        if ~isnan(bits)
            V = (bits * Vref / ADC);
            t = toc;

            tiempo(end+1) = t;
            voltaje(end+1) = double(V);

            bufferV = [bufferV(2:end) V];
            bufferT = [bufferT(2:end) t];

            set(h, 'XData', bufferT, 'YData', bufferV);
            drawnow limitrate
        end
    end
end

save("senal_respiratoria_reposo.mat","tiempo","voltaje");
close(1)
pause(5)


%%Hablando 

x = input("Ingrese el tiempo deseado de lectura: ");

tiempo = [];
voltaje = [];
bufferT = nan(1,N);
bufferV = nan(1,N);

figure(2);
h = plot(bufferT, bufferV, 'r', 'LineWidth', 2);
grid on
xlabel("Tiempo (s)")
ylabel("Voltaje (V)")
title("Señal Respiratoria Hablando");
ylim([0 5])  

tic
while toc < x
    if s.NumBytesAvailable > 0
        bits = str2double(readline(s));
        if ~isnan(bits)
            V = (bits * Vref / ADC);
            t = toc;

            tiempo(end+1) = t;
            voltaje(end+1) = double(V);

            bufferV = [bufferV(2:end) V];
            bufferT = [bufferT(2:end) t];

            set(h, 'XData', bufferT, 'YData', bufferV);
            drawnow limitrate
        end
    end
end

save("senal_respiratoria_Hablando.mat","tiempo","voltaje");
close(2)
```
Al finalizar la primera medición, realizada con el sujeto en reposo, los datos se guardan en un archivo llamado senal_respiratoria_reposo.mat. Luego el programa vuelve a solicitar el tiempo de medición para repetir el proceso, esta vez con el sujeto hablando, y finalmente guarda la señal en el archivo senal_respiratoria_hablando.mat.

<div align="center">
  <img src="https://github.com/user-attachments/assets/624def63-3031-4abf-8d56-f8a2abc958e9" width="500" />
</div>

En la imagen anterior se puede ver cómo se realiza la adquisición de datos en tiempo real para la señal respiratoria en reposo. Además, se puede notar un comportamiento ondulatorio característico de la respiración.

### Procesamiento

```matlab
clear
close all
clc

fc_low = 0.15;  
fc_high = 0.33;  
orden = 4;       

%% En reposo
x = load('senal_respiratoria_reposo.mat');
t = x.tiempo(:);
v = x.voltaje(:);

N = min(length(t), length(v));
t = t(1:N);
v = v(1:N);

fs = 1/(t(2)-t(1));
Wn = [fc_low fc_high]/(fs/2); 
[b, a] = butter(orden, Wn, 'bandpass');
v_f = filtfilt(b, a, v);

V = fft(v_f)/N;
V = abs(V(1:floor(N/2)));
f = (0:length(V)-1)*(fs/N);

figure
subplot(2,1,1)
plot(t, v, 'g', 'LineWidth', 1.5)
xlabel('Tiempo (s)')
ylabel('Voltaje')
title('Reposo - Señal filtrada')
grid on

subplot(2,1,2)
plot(f, V, 'g', 'LineWidth', 1.5)
xlim([0 1])
xlabel('Frecuencia (Hz)')
ylabel('|X(f)|')
title('Transformada de Fourier - Reposo')
grid on

vm = V(1);
idx_max = 1;
for i = 1:length(V)
    if V(i) > vm
        vm = V(i);
        idx_max = i;
    end
end

f_resp = f(idx_max);
disp(['Frecuencia dominante (reposo): ', num2str(f_resp), ' Hz, RPM: ', num2str(f_resp*60)])

%% Hablando
y = load('senal_respiratoria_Hablando.mat');
t = y.tiempo(:);
v = y.voltaje(:);

N = min(length(t), length(v));
t = t(1:N);
v = v(1:N);

fs = 1/(t(2)-t(1));
v_f = filtfilt(b, a, v);

V = fft(v_f)/N;
V = abs(V(1:floor(N/2)));
f = (0:length(V)-1)*(fs/N);

figure
subplot(2,1,1)
plot(t, v, 'm', 'LineWidth', 1.5)
xlabel('Tiempo (s)')
ylabel('Voltaje')
title('Hablando - Señal filtrada')
grid on

subplot(2,1,2)
plot(f, V, 'm', 'LineWidth', 1.5)
xlim([0 1])
xlabel('Frecuencia (Hz)')
ylabel('|X(f)|')
title('Transformada de Fourier - Hablando')
grid on

vm = V(1);
idx_max = 1;
for i = 1:length(V)
    if V(i) > vm
        vm = V(i);
        idx_max = i;
    end
end

f_resp = f(idx_max);
disp(['Frecuencia dominante (hablando): ', num2str(f_resp), ' Hz, RPM: ', num2str(f_resp*60)])

```
El código realiza el análisis de señales respiratorias en dos condiciones; reposo y hablando. Primero, se cargan las señales previamente guardadas, que incluyen el tiempo (t) y el voltaje (v). y se calcula la frecuencia de muestreo fs.

A continuación, se aplica un filtro Butterworth de cuarto orden tipo pasabanda, con frecuencias de corte de 0,15 Hz a 0,33 Hz, que corresponden al rango típico de la respiración humana. Esto permite eliminar componentes de ruido fuera del rango respiratorio y aislar la señal de interés.

Una vez filtrada, la señal se analiza en el dominio de frecuencia mediante la Transformada de Fourier, considerando solo la mitad positiva del espectro, ya que el FFT es simétrico. La frecuencia respiratoria dominante se determina buscando la amplitud máxima en el espectro. Esta frecuencia se multiplica por 60 para convertirla de Hz a respiraciones por minuto (RPM).

Finalmente, se grafican tanto las señales filtradas en el tiempo como sus espectros de frecuencia para cada condición, permitiendo visualizar cómo varía la respiración entre reposo y hablando. 

<div align="center">
<img width="500" height="600" alt="Captura de pantalla 2026-02-11 214209" src="https://github.com/user-attachments/assets/e8ed05ea-0978-42c6-8aef-79ce63c5bd06" />
</div>

$$
\text{Frecuencia respiratoria (Reposo)} = 10.24\,\text{rpm}
$$

<div align="center">
<img width="500" height="614" alt="Captura de pantalla 2026-02-11 214221" src="https://github.com/user-attachments/assets/17168115-cf04-420a-be2d-1fa5dfea350b" />
</div>

$$
\text{Frecuencia respiratoria (Hablando)} = 12.43\,\text{rpm}
$$

Anteriormente se mostraron ejemplos de las señales respiratorias analizadas y se calculó la frecuencia respiratoria para cada condición. En reposo, se obtuvo un valor ligeramente inferior al promedio típico, pero aún coherente, lo que puede indicar un estado de bastante relajación. Esto refleja que el cuerpo se encuentra en calma, con respiraciones lentas y regulares, propias de un momento de descanso.

En el caso de hablando, la señal presenta un patrón distinto, ya no se asemeja a una onda, si no que se observa que la señal sube rápidamente y baja de manera más gradual, lo que refleja con claridad el proceso de la respiración al hablar o leer en voz alta. Este comportamiento es consistente con la necesidad de tomar aire de forma más rápida y controlar la exhalación mientras se produce la voz, mostrando cómo la respiración se adapta a la actividad de comunicación.


## Parte C

### Procedimiento de la práctica:

1. *Investigación teórica:* En primer lugar, se investigaron como es el proceso de respiración y cuales son las variables que influyen en él.
2. *Elección de sensor:* Luego de conocer las variables que influyen en el proceso de respiración, se conversó entre los integrantes del grupo que sensor utilizar para el desarrollo de la práctica, teniendo como principal objetivo el capturar la señal respiratoria de una persona.
3. *Diseño e implementación:* A partir del sensor seleccionado, se discutió la manera de implementación y como adaptarlo al sujeto de prueba. Aquí se definió usar una liga de caucho con el sensor y ubicarlo en el pecho para medir la presión ejercida mientras inhala y exhala.
4. *Elaboración del sistema:*
5. *Captura de la señal:* Luego de elaborar y acondicionar el sistema para capturar la señal respiratoria, se coloca el dispositivo en el paciente, se toman lecturas de acuerdo al tiempo deseado y se pide al paciente que esté en reposo o hablando/leyendo.
6. 

### ANÁLISIS DE RESULTADOS

- **¿Son los patrones respiratorios y frecuencias respiratorias iguales o diferentes en cada caso? ¿A qué se debe esto?**

  
- **¿Cuáles serían las ventajas y desventajas de emplear múltiples sensores para el monitoreo del proceso respiratorio? ¿Cuáles podrían ser las razones?**

El uso de múltiples sensores en un sistema de monitoreo presenta tanto ventajas como limitaciones. Entre las principales **ventajas** se destaca la mayor *fiabilidad*, ya que ante la falla de uno de los dispositivos, los sensores restantes pueden mantener la continuidad del registro. Asimismo, la implementación de múltiples fuentes de medición puede mejorar la *calidad* de la señal, debido a la posible reducción de ruido y a la complementariedad de la información adquirida, lo que favorece una representación más *precisa* del fenómeno fisiológico y una mejor validación de los resultados. Adicionalmente, esta estrategia puede ampliar el *alcance clínico* del monitoreo, al facilitar la detección de alteraciones o patrones asociados a patologías de mayor complejidad.

<div align="center">
<img width="300" height="300" alt="image" src="https://github.com/user-attachments/assets/d1e5e046-9afc-4ecb-a0b6-6b439529dd38" />
</div>

En cuanto a las **desventajas**, se encuentra el *incremento en los costos*, dado que se requiere una mayor inversión en dispositivos, sistemas de adquisición y consumo energético. Además, la *sincronización* de múltiples sensores introduce una complejidad adicional, especialmente cuando las señales provienen de diferentes fuentes con tasas de muestreo distintas, lo que exige una alineación temporal adecuada. También debe considerarse la *incomodidad para el paciente*, ya que la incorporación de varios sensores puede generar mayor estrés o interferencia, afectando parámetros fisiológicos como el ritmo respiratorio. Finalmente, el manejo de múltiples señales implica una *mayor complejidad* en el procesamiento de datos, requiriendo mayor capacidad computacional y el uso de algoritmos de fusión para integrar adecuadamente la información proveniente de cada sensor. 

### CONCLUSIONES

# REFERENCIAS:

- https://www.nhlbi.nih.gov/es/salud/pulmones/beneficios
- https://www.cun.es/diccionario-medico/terminos/respiracion
- https://www.mafemedical.com/blog/variables-proceso-de-respiracion-humana/
- https://www.mactronica.com.co/sensor-de-fuerza-resistivo-fsr402
- https://files.seeedstudio.com/wiki/Grove-Round_Force_Sensor_FSR402/res/FSR402.pdf
