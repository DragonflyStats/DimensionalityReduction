xVector=[0:0.01:2*pi];
yVector=0.0*xVector;
for n=1:length(xVector)
  yVector[n] = sin(xVector[n]);
  end
plot(xVector, yVector)
