package com.parable.crud.clientes.Editar;

import android.content.Context;

import com.parable.crud.DAO.ClientesDAO;
import com.parable.crud.VO.ClientesVO;

public class ClientesController {
    ClientesDAO dao;
    ClientesVO vo = new ClientesVO();

    public void instanceVO(Context ctx){
        dao = new ClientesDAO(ctx);
    }

    public void insert(){
        dao.insert(vo);
    }

    public ClientesVO getClienteFromid(int id){
        return dao.get(id);
    }

    public void update(){
        dao.update(vo);
    }
}
