xVector=[0:0.01:2*pi]

sinVector=sin(xVector);
cosVector=cos(xVector);

sinCurve=Curve(xVector, sinVector);
setattr(sinCurve, "label", "Sine curve");

cosCurve=Curve(xVector, cosVector);
setattr(cosCurve, "label", "Cosine curve");

MyLegend=Legend(0.5, 0.9, {sinCurve, cosCurve} )

p=FramedPlot()
setattr(p,"title","Sine and cosine curves");
setattr(p,"xlabel","X data");
setattr(p,"ylabel","Y data");
add(p, sinCurve, cosCurve, MyLegend);

file(p, "SineCosine.pdf");

file(p, "SineCosine.png");
