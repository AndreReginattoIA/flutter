package com.parable.crud.clientes.Listar;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.TextView;

import com.parable.crud.DAO.ClientesDAO;
import com.parable.crud.MainActivity;
import com.parable.crud.R;
import com.parable.crud.VO.ClientesVO;
import com.parable.crud.clientes.Editar.EditarClientesActivity;

import java.util.ArrayList;

public class ListarClientesAdapter extends BaseAdapter {
    private Context context;
    private ArrayList<ClientesVO> clientesVOList;

    public ListarClientesAdapter(Context ctx, ArrayList<ClientesVO> list) {
        context = ctx;
        clientesVOList = list;
    }

    @Override
    public int getCount() {
        return clientesVOList.size();
    }

    @Override
    public Object getItem(int index) {
        return clientesVOList.get(index);
    }

    @Override
    public long getItemId(int index) {
        return clientesVOList.get(index).getId();
    }

    @Override
    public View getView(final int index, View view, ViewGroup viewGroup) {
        view = LayoutInflater.from(context).inflate(R.layout.listar_clientes_adapter, viewGroup, false);

        final LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.linearLayoutClientesAdapter);

        final ClientesVO cliVO = (ClientesVO) getItem(index);

        linearLayout.setOnClickListener(new LinearLayout.OnClickListener(){

            @Override
            public void onClick(View view) {
                final PopupMenu popup = new PopupMenu(context, linearLayout);
                popup.getMenuInflater().inflate(R.menu.clientes_menu, popup.getMenu());
                popup.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
                    public boolean onMenuItemClick(MenuItem item) {
                        int i = item.getItemId();
                        if (i == R.id.menuClientesEditar) {
                            Intent intent = new Intent(context, EditarClientesActivity.class);
                            intent.putExtra("idCliente", cliVO.getId());
                            context.startActivity(intent);
                            return true;
                        }
                        else if (i == R.id.menuClientesExcluir){
                            ClientesDAO clientesDAO = new ClientesDAO(context);
                            clientesDAO.delete(cliVO.getId());
                            return true;
                        }
                        else {
                            return onMenuItemClick(item);
                        }
                    }
                });

                popup.show();
            }
        });

        TextView txv_item_nome = (TextView) view.findViewById(R.id.txv_item_nome);
        TextView txv_item_cpf = (TextView) view.findViewById(R.id.txv_item_cpf);

        txv_item_nome.setText(cliVO.getNome());
        txv_item_cpf.setText(cliVO.getCPF());

        return view;
    }
}
