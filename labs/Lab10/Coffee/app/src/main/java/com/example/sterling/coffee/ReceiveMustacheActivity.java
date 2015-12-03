package com.example.sterling.coffee;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.TextView;

public class ReceiveMustacheActivity extends AppCompatActivity {

    private String mustache;
    private String mustacheURL;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_receive_mustache);

        //get intent
        Intent intent = getIntent();
        mustache = intent.getStringExtra("mustacheName");
        mustacheURL = intent.getStringExtra("mustacheURL");
        System.out.println(mustache);
        System.out.println(mustacheURL);

//        update text view
        TextView messageView = (TextView) findViewById(R.id.mustacheTextView);
        messageView.setText("You should check out " + mustache);
    }

    public void loadWebSite(View view){
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(mustacheURL));
        startActivity(intent);
    }
}
