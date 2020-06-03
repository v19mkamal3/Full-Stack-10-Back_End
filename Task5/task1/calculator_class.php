<?php
class MyCalculator {
private $num1, $num2;
public function __construct( $num1, $num2 ) {
$this->num1 = $num1;
$this->num2 = $num2;
}
public function add() {
echo $this->num1 + $this->num2 .' Addition'."<br>";
}
public function subtract() {
echo $this->num1 - $this->num2 .' Submition'."<br>";
}
public function multiply() {
echo $this->num1 * $this->num2 .' Multiplication'."<br>";
}
public function divide() {
return $this->num1 / $this->num2;
}

}
$mycalc = new MyCalculator(12, 6); 
// echo $mycalc-> add().' Addition'."<br>"; // Displays 18 
// echo $mycalc-> multiply().' Multiplication'."<br>"; // Displays 72
// echo $mycalc-> subtract().' Submition'."<br>"; // Displays 6
$mycalc->add();
$mycalc->subtract();
$mycalc->multiply();

echo $mycalc-> divide().' Division'."<br>"; // Displays 2

?>