package com.example.sterling.coffee;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Spinner;

public class FindMustacheActivity extends AppCompatActivity {

    private Mustache myMustache = new Mustache();

    public void findMustache(View view){
        Spinner mustacheSpinner = (Spinner)findViewById(R.id.spinner);
        String mustache = String.valueOf(mustacheSpinner.getSelectedItem());
        myMustache.setMustache(mustache);
        String suggestedMustache = myMustache.getMustache();
        String suggestedMustacheURL = myMustache.getMustacheURL();
        System.out.println(suggestedMustache);
        System.out.println(suggestedMustacheURL);

//        create an intent
        Intent intent = new Intent(this, ReceiveMustacheActivity.class);

//        pass data
        intent.putExtra("mustacheName", suggestedMustache);
        intent.putExtra("mustacheURL", suggestedMustacheURL);

//        starts the intent
        startActivity(intent);
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_find_mustache);
    }
}
