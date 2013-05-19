# Richtungsfeld für Fosa-Beispiel

clear;
clc;

# Differentialgleichung definieren
dgl = @(y, x) 3+2*y

# Plot des Richtungsfeldes erstellen
Richtungsfeld(dgl)
