<?php
    namespace AppBundle\EventListener;

    use Pimcore\Event\Model\DataObjectEvent;
    use Pimcore\Model\DataObject\Product;

    class TestListener{

        public function onPreUpdate(DataObjectEvent $d){
            if ($d->getObject() instanceof product) {
                $product = $d->getObject();
                if ($product->getManufacturedOn() < date("Y-m-d")) {
                    throw new \Pimcore\Model\Element\ValidationException("Start date should not be less than current date");
                }
            }
            
            if ($d->getObject() instanceof product) {
                $product = $d->getObject();
                if (($product->getExpiry() < $product->getManufacturedOn()))
                 {
                    throw new \Pimcore\Model\Element\ValidationException("End date should be greater than start date");
                }
            }
	
        }
    }