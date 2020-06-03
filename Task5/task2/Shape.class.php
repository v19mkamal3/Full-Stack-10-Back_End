<?php
class Shape
{
    const SHAPE_TYPE=1;
    public $name;
    protected $length;
    protected $width;
    private $id;

public function __construct($length,$width)
 {
    $this->length=$length;
    $this->width=$width;
    $this->id=uniqid();
 }


 public function setName($name)
 {
    $this->name=$name;
 }

 public function getName()
 {
   if ($this->name){
      return $this->name;
      }
      return 'Shape';
 }

 public function getId()
 {

//      return $this->id;
        // return array('userid'=>$this->id);
        // return array('userid'=>uniqid('userID_1',true));   
        return $this->id;
      
 }
 public function area()
 {
    return $this->length * $this->width;
 }

 public static function getTypeDescription() :string
 {
    return 'Type: '.static::SHAPE_TYPE;
 }

 

 public function getFullDescription ()
 {
     return 'Shape<'.$this->getId().'>: '.$this->getName($this->name).' - '.$this->length.' x '.$this->width;
    //  $fullDescription = 'Shape<'.$this->getId().'>: '.$this->getName($this->name).' - '.$this->length.' x '.$this->width;


    //  return $fullDescription ;
 }

}



//test

// $test=new Shape(2,4);
// $test->setName("ahmed");
// echo $test->getName();
// var_dump ($test->getId());
// echo $test->area();
// var_dump ("Type: ".Shape::getTypeDescription());
// echo $test->getFullDescription ();



