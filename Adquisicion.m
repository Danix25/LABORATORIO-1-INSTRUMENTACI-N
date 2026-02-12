
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
