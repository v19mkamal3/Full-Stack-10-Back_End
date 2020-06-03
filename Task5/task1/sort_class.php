<?php
class Dessending
{
    public $arrange=[];

    public function setArrange($arrange=[])
    {

        $this->arrange=$arrange;
    }

    public function getArrange()
    {
        sort($this->arrange);
        
        echo '<pre>'.print_r($this->arrange,true).'</pre>';
    }
}
$des=new Dessending;
$des->setArrange([11, -2, 4, 35, 0, 8, -9]);
$des->getArrange();