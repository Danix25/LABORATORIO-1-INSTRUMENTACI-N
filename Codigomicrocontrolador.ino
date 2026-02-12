unsigned long t_actual;
unsigned long t_previo = 0;
int intervalo = 10;

void setup() {
  Serial.begin(115200);
}
float v;
void loop() {
  t_actual = millis();
  if (t_actual - t_previo >= intervalo){
    t_previo = t_actual;
    v = analogRead(34);
    Serial.println(v);
  }
}
