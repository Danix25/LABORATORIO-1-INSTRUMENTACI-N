clear
close all
clc

fc_low = 0.001;  
fc_high = 1;  
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
plot(t, v_f, 'g', 'LineWidth', 1.5)
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
plot(t, v_f, 'm', 'LineWidth', 1.5)
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
