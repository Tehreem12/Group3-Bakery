<?php

namespace AppBundle\Controller;

use Pimcore\Bundle\AdminBundle\Controller\Rest\AbstractRestController;
use Pimcore\Bundle\AdminBundle\HttpFoundation\JsonResponse;
use Pimcore\Bundle\AdminBundle\Security\BruteforceProtectionHandler;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpKernel\Exception\HttpException;
use Pimcore\Model\DataObject\Product;
use Pimcore\Model\DataObject\Category;
use Pimcore\Model\Asset\MetaData\ClassDefinition\Data\Asset;
//use Pimcore\Model\DataObject\Objectbrick\Data\CookiePack;
//use Pimcore\Model\DataObject\Product\SpecificFeatures;

/**
 * Class RestController
 * @package AppBundle\Controller
 */

 class RestController extends AbstractRestController
 {
     CONST BASE_API_SERVICE = 'base_api_service';

     /**
      * @Route("/webservice/showProducts")
      * @Method({"GET"})
      * @param Request $request
      * @return \Symfony\Component\HttpFoundation\JsonResponse
      * @throws \Pimcore\Http\Exception\ResponseException
      * @throws \Exception
      */
    public function getProductList(Request $request, BruteforceProtectionHandler $bruteforceProtectionHandler)
    {
        $data = [];
        $product = new \Pimcore\Model\DataObject\Product\Listing();
                
        $product->getObjects();
        foreach ($product as $pro)
        {
            $data[] = $this->getProduct($pro);
            
        }
        
        if (!empty($data)) {
            return $this->createSuccessResponse($data, true);
        }
        return $this->createErrorResponse("No product found!", Response::HTTP_NOT_FOUND);
     
       
       
    }
    
    
    /**
      * @Route("/webservice/filterProduct")
      * @Method({"GET"})
      * @param Request $request
      * @return \Symfony\Component\HttpFoundation\JsonResponse
      * @throws \Pimcore\Http\Exception\ResponseException
      * @throws \Exception
      */
    public function getProductfilter(Request $request, BruteforceProtectionHandler $bruteforceProtectionHandler)
    {   
        $weight = $request->query->get('weight');
       $lowerprice = $request->query->get('lowerprice');
       $category = $request->query->get('category');
        $data = [];
        $product = new \Pimcore\Model\DataObject\Product\Listing();
        $product->getObjects();
        foreach ($product as $pro)
       {
        
        if($weight) {
                   if($lowerprice) {
                                if((strcasecmp($weight , $pro->getWeight()) == 0) && ($lowerprice < ($pro->getPrice()))) 
                                   {
                                    $data[] = $this->getProduct($pro);
                                   }
                               }
                   
                   elseif($category) {
      if((strcasecmp($weight , $pro->getWeight()) == 0) && ($lowerprice < ($pro->getPrice()) (strcasecmp($category , 
      $pro->getCategoryType() == 0))))
                            {
                                $data[] = $this->getProduct($pro);
                            }

                        }
                  
                   else {
                           if(strcasecmp($weight, $pro->getWeight()) == 0 )
                             {
                               $data[] = $this->getProduct($pro);
                             }

                       }
                  }
              
              
         elseif($lowerprice) {
                  if($lowerprice < ($pro->getPrice()))
                            {
                                $data[] = $this->getProduct($pro);
                            }

                        }
          else {
                $data[] = $this->getProduct($pro);
               }
            
          } 
          if (!empty($data)) 
          {
            return $this->createSuccessResponse($data, true);
          }
          return $this->createErrorResponse("No product found with given filter(s)!", Response::HTTP_NOT_FOUND);  
                
        
        
     
      
      }
      
      function getProduct(Product $pro)
      {  return [
                'productName' => $pro->getName(),
                'description' => $pro->getDescription(),
                'sku' => $pro->getSku(),
                'manufacture' => $pro->getManufacturedOn()->toDateString(),
                'expired' => $pro->getExpiry()->toDateString(),
                'image' => $pro->getImage(),
                'weight' => $pro->getWeight()->__toString(),
                'price' => $pro->getPrice()->__toString(),
                'category' => $pro->getCategoryType(),
                'product' => $pro->getProductType(),
      ];
      
      }
    
    }
    
?>