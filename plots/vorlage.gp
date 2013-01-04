# set the terminal to latex
set terminal latex

# redirect the output to a file
set output "vorlageplot.tex"

# set the size of the plot
# > the default is 5"x3"
# > the parameters are scale factors (based on the default)
set size 0.5,0.5

# set the title
   # set title 'Sinusfunktion'

# remove the frame around the plot
set noborder

# place x and y axis 
set xzeroaxis lt -1 lw 1
set yzeroaxis lt -1 lw 1

# set the range
set yrange [-1:1]
set xrange [-pi:pi]

# set the axis name
   # set ylabel 'y-Wert'
   # set xlabel 'x-Wert'

# remove the tics
   # unset xtics
   # unset ytics

# set tics on the axis
set xtics axis
set ytics axis

# set the scale for the tics
set xtics ("-{/Symbol p}" -pi, "-{/Symbol p}/2" -pi/2, "{/Symbol p}/2" pi/2, "{/Symbol p}" pi)
set ytics 1

# define some things to the function
a=1.0
b=0.0
f(x)=(sin(x)*a)+b

# do the plot for latex output
plot f(x)

# replot for other output (as example png)
set terminal png
set size 1,1 
set output 'vorlageplot.png'
plot f(x)

set terminal postscript enhanced
set size 1,1
set output 'vorlageplot.ps'
plot f(x)

# at the end of the gnuplot-file reset the terminal
set output
set terminal pop

# in the tex file include the plot with
#
# \begin{figure}
# \begin{center}
# \input{filename}
# \end{center}
# \end{figure}
