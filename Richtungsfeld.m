function Richtungsfeld(dgl)
% dgl ist die erste Ableitung von x nach t und ist i.A. eine Funktion von x und t
 
% Ausschnitt und Abstand zwischen den Vektoren
x = -3:.5:3;
t = -3:.5:3;
 
for x_n = 1:length(x)
	for t_n = 1:length(t)
  		len = sqrt( dgl(x(x_n), t(t_n))^2 + 1 ); % Länge des Vektors für Normierung
		dt(x_n,t_n) = 1 / len;                   % Länge des Vektors entlang der Abszisse
		dx(x_n,t_n) = dgl(x(x_n), t(t_n)) / len; % Länge des Vektors entlang der Ordinate
	end
end

quiver(t, x, dt, dx, '-r');  % Vektoren zeichnen
	 
print('field.eps', '-deps')  % Plot als svg-Datei exportieren
