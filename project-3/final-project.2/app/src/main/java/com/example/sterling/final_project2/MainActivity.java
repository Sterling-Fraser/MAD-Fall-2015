package com.example.sterling.final_project2;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void findUtilityInput(View view) {
        //editText
        EditText roommateInput = (EditText) findViewById(R.id.roommates);
        String roommateValue = roommateInput.getText().toString();
        int noRoom=Integer.parseInt(roommateValue);

        EditText rentInput = (EditText) findViewById(R.id.rent);
        String rentValue = rentInput.getText().toString();
        int noRent=Integer.parseInt(rentValue);

        EditText electricInput = (EditText) findViewById(R.id.electricity);
        String electricValue = electricInput.getText().toString();
        int noElect=Integer.parseInt(electricValue);

        EditText gasInput = (EditText) findViewById(R.id.gas);
        String gasValue = gasInput.getText().toString();
        int noGas=Integer.parseInt(gasValue);

        EditText trashInput = (EditText) findViewById(R.id.trash);
        String trashValue = trashInput.getText().toString();
        int noTrash=Integer.parseInt(trashValue);

        EditText internetInput = (EditText) findViewById(R.id.internet);
        String internetValue = internetInput.getText().toString();
        int noInternet=Integer.parseInt(internetValue);

        EditText otherInput = (EditText) findViewById(R.id.other);
        String otherValue = otherInput.getText().toString();
        int noOther=Integer.parseInt(otherValue);

        TextView output = (TextView) findViewById(R.id.outputText);
        output.setText("No. of Roommates: " + noRoom + "\r\nRent per person: " + noRent/noRoom + "\r\nElectric per person: " + noElect/noRoom + "\r\nGas per person: " + noGas/noRoom + "\r\nTrash per person: " + noTrash/noRoom + "\r\nInternet per person: " + noInternet/noRoom + "\r\nOther Expenses per person: " + noOther/noRoom);

    }
}
