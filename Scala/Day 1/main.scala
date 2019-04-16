def whileLoop(start: Int, stop: Int) {
  var i = start
  while (i < stop) {
    println(i)
    i += 1
  }
}

def forLoop(start: Int, stop: Int) {
  for (i <- start until stop) {
    println(i)
  }
}

def forEach(){
  //    args.foreach { arg =>
  //      println(arg)
  //    }
}

whileLoop(0, 10)
forLoop(0, 10)
//  forEach


