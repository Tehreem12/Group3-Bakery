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


class CategoryCommand extends AbstractCommand
{
    protected function configure()
    {
        $this
            ->setName('Pimcore:CsvCommand:Category')
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
        $object->setCondition('name = ?', 'Category');
        // $object->addConditionParam('status = ?', false);
       // $object->setLimit(2);

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
        foreach ($data as $cat) {
        

                if ($cat->name != NULL) {
                   
                    $object = new Pimcore\Model\DataObject\Category();
                  
                    $object->setKey($cat->key);
                    $object->setParentId(4);
                    $object->setPublished(true);
		     $image = \Pimcore\Model\Asset\Image::getByPath($cat->image);
		  
                 
                    $object->setName($cat->name);
                    $object->setDescription($cat->description);
                    $object->setActive($cat->active);
                    
       	     $object->setImage($image);
      
                	
       	     // $obj->save();
                    $object->save();

                    $msg = "Data Imported Successfully.\n";
                   
                  
                }


                $this->dump('Data Imported Successfully');
            }
        }
    }

