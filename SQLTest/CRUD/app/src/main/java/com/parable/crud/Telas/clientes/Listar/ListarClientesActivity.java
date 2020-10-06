package com.parable.crud.clientes.Listar;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.Toast;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.parable.crud.DAO.ClientesDAO;
import com.parable.crud.MainActivity;
import com.parable.crud.R;
import com.parable.crud.VO.ClientesVO;
import com.parable.crud.clientes.Editar.EditarClientesActivity;

import java.util.ArrayList;

public class ListarClientesActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_listar_clientes);

        ClientesDAO clientesDAO = new ClientesDAO(this);
        ArrayList<ClientesVO> clientesVOList = clientesDAO.getAll();

        if (clientesVOList != null) {
            ListarClientesAdapter adapter = new ListarClientesAdapter(this, clientesVOList);

            ListView listView = (ListView) findViewById(R.id.listViewClientes);
            listView.setAdapter(adapter);
        }

        FloatingActionButton fab = findViewById(R.id.floatingActionButton);
        fab.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), EditarClientesActivity.class);
                startActivity(intent);
            }
        });
    }
}