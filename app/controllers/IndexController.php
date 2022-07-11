<?php
declare(strict_types=1);

class IndexController extends ControllerBase
{

    public function initialize()
    {
        $this->view->setLayout('common');
    }

    public function indexAction()
    {
        $user = Org::find();
        $this->view->data=$user;
    }

    public function getMhsById($id)
    {
        $user = Org::findFirstByid($id);
        $this->view->dataById=$user;
    }
}

