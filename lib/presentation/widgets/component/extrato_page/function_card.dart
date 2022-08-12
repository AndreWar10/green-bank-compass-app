isComprovant(x) {
  bool isComprovant = false;
  if (x == "TRANSFEROUT" || x == "PIXCASHOUT") {
    isComprovant = true; //trans realizada
  } else if (x == "PIXCASHIN" || x == "BANKSLIPCASHIN" || x == "TRANSFERIN") {
    isComprovant = false;
  }

  return isComprovant;
}

isPix(x) {
  bool isComprovant = false;
  if (x == "TRANSFERIN" || x == "TRANSFEROUT" || x == "BANKSLIPCASHIN") {
    isComprovant = false;
  } else if (x == "PIXCASHIN" || x == "PIXCASHOUT") {
    isComprovant = true;
  }

  return isComprovant;
}