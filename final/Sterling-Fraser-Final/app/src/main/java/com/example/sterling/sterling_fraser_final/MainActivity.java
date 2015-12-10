package com.example.sterling.sterling_fraser_final;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.ToggleButton;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    public void findPizza(View view) {

        //toggle button
        ToggleButton toggle = (ToggleButton) findViewById(R.id.pizza_toggle);
        boolean pizzaSauce = toggle.isChecked();
        String pizzaSauceString;
        if(pizzaSauce) {
            pizzaSauceString = "white sauce";
        }
        else {
            pizzaSauceString="red sauce";
        }

//        radiobutton
        RadioGroup crust = (RadioGroup) findViewById(R.id.crust_type);
        String crusttype;
        int crust_id = crust.getCheckedRadioButtonId();
        switch(crust_id){
            case -1:
                crusttype="no";
                break;
            case R.id.radioButton1:
                crusttype="thin crust";
                break;
            case R.id.radioButton2:
                crusttype="thick crust";
                break;
            default:
                crusttype="no";
        }

        //check boxes
        String checkbox_string = "";
        CheckBox check1 = (CheckBox) findViewById(R.id.checkBox1);
        boolean checked1 = check1.isChecked();
        if(checked1){
            checkbox_string += "pepperoni, ";
        }

        CheckBox check2 = (CheckBox) findViewById(R.id.checkBox2);
        boolean checked2 = check2.isChecked();
        if(checked2){
            checkbox_string += "mushrooms, ";
        }

        CheckBox check3 = (CheckBox) findViewById(R.id.checkBox3);
        boolean checked3 = check3.isChecked();
        if(checked3){
            checkbox_string += "onions, ";
        }

        CheckBox check4 = (CheckBox) findViewById(R.id.checkBox4);
        boolean checked4 = check4.isChecked();
        if(checked4){
            checkbox_string += "sausage, ";
        }

        //spinner
        Spinner sizeSpinner = (Spinner) findViewById(R.id.spinner);
        String sizeValue = String.valueOf(sizeSpinner.getSelectedItem());

        //switch
        String gluten_string = "";
        Switch gluten_switch = (Switch) findViewById(R.id.switch1);
        boolean gluten = gluten_switch.isChecked();
        if (gluten){
            gluten_string = "and it's gluten free!";
        }
        else{
                gluten_string="and it's full of delicious gluten!";
        }

        TextView pizza = (TextView) findViewById(R.id.pizzaText);


        EditText name = (EditText) findViewById(R.id.editText);
        String nameValue = name.getText().toString();

        pizza.setText("You want a " + sizeValue + " " + nameValue + " pizza with " + pizzaSauceString + " and " + crusttype + " covered with " + checkbox_string + gluten_string);
    }
}
