<?php
namespace AppBundle\EventListener;
  
use Pimcore\Event\Model\ElementEventInterface;
use Pimcore\Event\Model\DataObjectEvent;
use Pimcore\Model\DataObject\Product;

class DateListener {
     
  
     
     
    public function BeforeSave(DataObjectEvent $e) {
       
   if($e->getObject() instanceof Product) {
            // do something with the object
            $demo = $e->getObject(); 
          
           if($demo->getExpiry() < $demo->getManufacturedOn())
           {
           throw  new \Pimcore\Model\Element\ValidationException("Invalid Date!!!!!!!!!!!!!!!!!");
           }
            
            
        }
    }
}
