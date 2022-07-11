<?php
declare(strict_types=1);

class OrgController extends ControllerBase
{
    public function initialize()
    {
        $this->view->setLayout('common');
    }
    public function indexAction()
    {

    }

    public function daftarAction()
    {
        $user = new Org();
        $user->id = $this->request->getPost("txt_id");
        $user->namas = $this->request->getPost("txt_namas");
        $user->nims = $this->request->getPost("txt_nims");
        $user->prodis = $this->request->getPost("txt_prodis");
        if (!$user->save()) {
            echo "Gagal Disimpan";
        }
        else
        {
            $this->response->redirect('/');
        }

    }
    public function viewDataAction()
    {
        $user = Org::find();
        $this->view->data=$user;
    }
    public function editAction($id)
    {
        $user = Org::findFirstByid($id);
        $this->view->id = $user->id;
        $this->view->nama = $user->namas;
        $this->view->nim = $user->nims;
        $this->view->prodi = $user->prodis;
    }
    public function updateAction()
    {
        $id = $this->request->getPost("txt_id");
        $user = Org::findFirstByid($id);
        $user->namas = $this->request->getPost("txt_namas");
        $user->nims = $this->request->getPost("txt_nims");
        $user->prodis = $this->request->getPost("txt_prodis");
        if (!$user->save()) {
            echo "Gagal Disimpan";
        }
        else
        {
            echo "Data Berhasil diupdate";
        }
    }
    public function deleteAction($id)
    {
        $user = Org::findFirstByid($id);
        if(!$user->delete()){
            echo "Gagal Menghapus";
        }
        else{
            $this->response->redirect('/');
        }

    }

    public function mhsAction($id)
    {
        $user = Org::findFirstByid($id);
        $this->view->dataById = $user;
    }
}

