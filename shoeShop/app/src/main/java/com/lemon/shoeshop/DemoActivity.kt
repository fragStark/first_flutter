package com.lemon.shoeshop

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.EditText
import androidx.appcompat.app.AppCompatActivity

const val EXTRA_MESSAGE = "com.example.myfirstapp.MESSAGE"
class DemoActivity : AppCompatActivity(){

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.demo)
    }

    override fun onDestroy() {
        super.onDestroy()
    }

    fun sendMessage(view: View) {
        val editTextValue = findViewById<EditText>(R.id.send_message).text
        val message = editTextValue.toString()
        val intent = Intent(this, DisplayActivity::class.java).apply {
            putExtra(EXTRA_MESSAGE, message)
        }
        startActivity(intent)
    }

}