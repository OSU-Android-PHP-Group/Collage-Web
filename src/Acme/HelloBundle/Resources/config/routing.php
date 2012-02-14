<?php

use Symfony\Component\Routing\RouteCollection;
use Symfony\Component\Routing\Route;

$collection = new RouteCollection();
$collection->add('AcmeHelloBundle_homepage', new Route('/hello/{name}', array(
    '_controller' => 'AcmeHelloBundle:Default:index',
)));

return $collection;
