# Richtungsfeld für Fosa-Beispiel

clear;
clc;

# Differentialgleichung definieren
dgl = @(y, x) 3+2*y

# Plot des Richtungsfeldes erstellen
Richtungsfeld(dgl)

print('field.eps', '-deps')

# Orthogonale Trajektorien
dgl1 = @(y, x) y
Richtungsfeld(dgl1)
print('trajektorien1.eps', '-deps')

dgl2 = @(y, x) -1/y
Richtungsfeld(dgl2)
print('trajektorien2.eps', '-deps')

