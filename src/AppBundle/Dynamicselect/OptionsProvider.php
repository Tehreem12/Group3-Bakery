<?php

namespace AppBundle\Dynamicselect;

use Pimcore\Model\DataObject\Category;
use Pimcore\Model\DataObject\ClassDefinition\Data;

use Pimcore\Model\DataObject\ClassDefinition\DynamicOptionsProvider\SelectOptionsProviderInterface;


class OptionsProvider implements SelectOptionsProviderInterface
{
    /**
     * @param array $context 
     * @param Data $fieldDefinition 
     * @return array
     */
    public function getOptions($context, $fieldDefinition) {
        $object = new Category\Listing();
        $result = array();
     //   $object->setCondition('valid = ?',1);
        foreach($object as $objects)
        {
          array_push($result, ["key" =>$objects->getName(), "value"=>$objects->getName()]);
        }
        return $result;
    }

    /**
     * Returns the value which is defined in the 'Default value' field  
     * @param array $context 
     * @param Data $fieldDefinition 
     * @return mixed
     */
    public function getDefaultValue($context, $fieldDefinition) {
        return $fieldDefinition->getDefaultValue();
    }

    /**
     * @param array $context 
     * @param Data $fieldDefinition 
     * @return bool
     */
    public function hasStaticOptions($context, $fieldDefinition) {
        return true;
    }

}
