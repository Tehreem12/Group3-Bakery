<?php

namespace AppBundle\Command;

use Pimcore;
use Pimcore\Console\AbstractCommand;
use Pimcore\Console\Dumper;
use Pimcore\Model\DataObject;
use Pimcore\Model\Asset;

use Pimcore\Model\Document;

use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

use Pimcore\Model\DataObject\Import;
use Pimcore\Model\DataObject\Log;


class ProductCommand extends AbstractCommand
{
    protected function configure()
    {
        $this
            ->setName('Pimcore:CsvCommand:Product')
            ->setDescription('imports csv files');
    }

    /**
     * @param InputInterface $input
     * @param OutputInterface $output
     * @return int|null|void
     * @throws \Exception
     */

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $object = new \Pimcore\Model\DataObject\Import\Listing();
        $object->setCondition('name = ?', 'Product');
        // $object->addConditionParam('status = ?', false);
        $object->setLimit(2);

        foreach ($object as $path) {
            $file = $path->getFile();
            $file = (PIMCORE_PROJECT_ROOT . '/web/var/assets' . $file->getPath() . $file->getFilename());
            // p_r($file);
            // die;
        }
        $h = fopen($file, "r");
        if ($h !== FALSE) {
            while (!feof($h)) {

                $cid[] = fgetcsv($h);
                $num = count($cid);
            }
            foreach ($cid[0] as $single_csv) {
                $cidName[] = $single_csv;
            }
            foreach ($cid as $val => $csv) {
                if ($val == FALSE) {
                    continue;
                }
                foreach ($cidName as $cidKey => $colName) {
                    $datas[$val - 1][$colName] = $csv[$cidKey];
                }
            }
            $count = 1;
            $json = json_encode($datas);
            fclose($h);
        }
        $data = json_decode($json);
        foreach ($data as $prod) {
        

                if ($prod->sku != NULL) {
                   
                    $object = new Pimcore\Model\DataObject\Product();
                  
                    $object->setKey($prod->key);
                    $object->setParentId(6);
                    $object->setPublished(true);
		     $image = \Pimcore\Model\Asset\Image::getByPath($prod->image);
		  
                    $object->setSku($prod->sku);
                    $object->setName($prod->name);
                    $object->setDescription($prod->description);
            
                    $object->setPrice(new DataObject\Data\QuantityValue($prod->price,$prod->Rs));
                     $object->setWeight(new DataObject\Data\QuantityValue($prod->weight,$prod->kg));
       	     $object->setImage($image);
       	    
       	       $objBrick = new DataObject\Objectbrick\Data\CookiePack($object); 
       	       $objBrick->setPackOf($prod->packOf);
       	       $object->getProductType()->setCookiePack($objBrick);
       	       
       	       $objBrick2 = new DataObject\Objectbrick\Data\Flavour($object); 
       	       $objBrick2->setFlavour($prod->flavour);
       	       $object->getProductType()->setFlavour($objBrick2);
       	      
       	      
       	              
       	      
       	   //     $category = new \Pimcore\Model\DataObject\Category\Listing();
                   //     $category->setCondition('name = ?', $prod->catrel);
                   //     $category->setLimit(1);
                   //     foreach ($category as $cat) {
                            //p_r($cat2);die;
                    //        $object->setCatrel($cat);
                    //    }
       	       $object->setCategoryType($prod->categoryType);
       	    
       	        $manufacturedOn = \Carbon\Carbon::parse($prod->manufacturedOn);
		        $object->setManufacturedOn($manufacturedOn);
		        $expiry = \Carbon\Carbon::parse($prod->expiry);
		        $object->setExpiry($expiry);
                	
       	     // $obj->save();
                    $object->save();

                    //$msg = "Data Imported Successfully.\n";

                    $mail = new \Pimcore\Mail();
                    $mail->addTo('kajalkhanna803@gmail.com');
                    $mail->setSubject('Products Imported Sucessfully');
                    $mail->setDocument('/importEmail');
                    // $mail->setParams($params);
                    $mail->send();
                  
                }


                $this->dump('Data Imported Successfully');
            }
        }
    }

