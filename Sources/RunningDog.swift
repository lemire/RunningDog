import Foundation


public struct RunningDog {
    public private(set)  var numberOfValues : Int = 0
    public private(set)  var mean : Double = 0.0
    private var previousMean : Double = 0.0
    private var previousSumOfSquares : Double = 0.0
    public private(set)  var sumOfSquares : Double = 0.0
    public private(set)  var maximum : Double = -Double.infinity
    public private(set)  var minimum : Double = Double.infinity

    init() {
      reset()
    }

    // reinitialize the values
    public mutating func reset() {
      numberOfValues = 0
      mean = 0.0
      sumOfSquares = 0.0
      previousMean = 0.0
      maximum = -Double.infinity
      minimum = Double.infinity
    }

    public mutating func  add(_ x : Double ) {
        if  maximum < x {
          maximum = x
        }
        if  minimum > x {
          minimum = x
        }
        numberOfValues += 1;

        if numberOfValues == 1 {
                mean = x
                previousMean = mean
                previousSumOfSquares = 0.0;
        } else {
                mean = previousMean + (x - previousMean) / Double(numberOfValues);
                sumOfSquares = previousSumOfSquares + (x - previousMean)*(x - mean);
                previousMean = mean;
                previousSumOfSquares = sumOfSquares;
            }
    }


    public var variance: Double {
        get {
            if numberOfValues > 1 {
              return sumOfSquares / Double(numberOfValues - 1)
            } else {
              return 0.0
            }
        }
    }

    public var standardDeviation: Double {
        get {
            return sqrt(variance)
        }
    }

}
