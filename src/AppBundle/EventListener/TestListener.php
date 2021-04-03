<?php
    namespace AppBundle\EventListener;

    use Pimcore\Event\Model\DataObjectEvent;
    use Pimcore\Event\Model\ElementEventInterface;
    use Pimcore\Model\DataObject\Product;

    class TestListener{

        public function onPreUpdate(DataObjectEvent $d){
        
            
            if ($d->getObject() instanceof Product) {
                $product = $d->getObject();
                if ($product->getManufacturedOn() > $product->getExpiry())
                 {
                    throw new \Pimcore\Model\Element\ValidationException("Expiry cannot be less than than Manufacturing");
                }
            }
	
        }
    }
    
   
