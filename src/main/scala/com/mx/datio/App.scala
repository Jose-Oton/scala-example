package com.mx.datio
import org.apache.log4j.Logger
import scala.io.Source

/**
 * @author ${user.name}
 */
object App {
  val logger = Logger.getLogger(App.getClass)
  def main(args: Array[String]) {
    val time1: Long = System.currentTimeMillis
    var count : Int= 0
    for (line <- Source.fromFile(args(0)).getLines) {
      if (line.contains("Multi-Family")){
        println(line)
        count+=1

      }
    }
    println("\nNumber of words: "+count)
    logger.error("Info")
    val time2: Long = System.currentTimeMillis
    println(time2 -time1)
  }
}
