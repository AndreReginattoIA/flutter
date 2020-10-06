package com.parable.crud.clientes.Editar;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.parable.crud.R;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class EditarClientesActivity extends AppCompatActivity {
    private Button btnGravarCliente;
    private EditText edNome;
    private EditText edCPF;
    private EditText edDataNascimento;

    private ClientesController controller = new  ClientesController();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_editar_clientes);

        edNome = (EditText) findViewById(R.id.edNomeCliente);
        edCPF = (EditText) findViewById(R.id.edCPFCliente);
        edDataNascimento = (EditText) findViewById(R.id.edDataNascimento);

        Intent intent = getIntent();
        final int idEditedCliente = intent.getIntExtra("idCliente", 0);

        controller.instanceVO(this);

        if (idEditedCliente > 0){
            controller.vo = controller.getClienteFromid(idEditedCliente);
            edNome.setText(controller.vo.getNome());
            edCPF.setText(controller.vo.getCPF());
            //edDataNascimento.setText(controller.vo.getDataNascimento());
        }

        btnGravarCliente = (Button) findViewById(R.id.btnGravarCliente);
        btnGravarCliente.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View view) {
                try {
                    controller.vo.setNome(edNome.getText().toString());
                    controller.vo.setCPF(edCPF.getText().toString());

                    DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
                    Date date = new Date(formatter.parse(edDataNascimento.getText().toString()).getTime());

                    controller.vo.setDataNascimento(date);

                    if (idEditedCliente > 0)
                        controller.update();
                    else
                        controller.insert();

                    Context context = getApplicationContext();
                    CharSequence text = "Cliente inserido com sucesso!";
                    int duration = Toast.LENGTH_SHORT;
                    Toast toast = Toast.makeText(context, text, duration);
                    toast.show();
                } catch (ParseException e) {
                    e.printStackTrace();
                }
            }
        });
    }
}