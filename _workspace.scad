OPENSCAD_LENGTH = 90;
PAPER_LENGTH = 80;
scale(OPENSCAD_LENGTH / PAPER_LENGTH) {
  translate([ 23, 0, 0 ])
  circle(d = 24.26);
  translate([ 0, 21, 0 ])
  circle(d = 21.21);
  translate([ -19, 0, 0 ])
  circle(d = 17.91);
  circle(d = 19.05);
}
