package com.lemon.shoeshop.model

import android.content.Context
import android.content.Intent
import android.widget.Toast
import androidx.databinding.ObservableField
import com.lemon.shoeshop.MainActivity

class LoginModel constructor(username: String, password: String, context: Context) {

    val name = ObservableField<String>(username)
    val pwd = ObservableField<String>(password)
    val context: Context = context
    /**
     *
     */
    fun onPwdChanged(s: CharSequence, start: Int, before: Int, count: Int) {
        pwd.set(s.toString())
    }

    fun login() {
        if (name.get().equals("123") && pwd.get().equals("123")) {
            Toast.makeText(context,"正确",Toast.LENGTH_LONG).show()
            val intent = Intent(context, MainActivity::class.java)
            context.startActivity(intent)
        }
    }
}