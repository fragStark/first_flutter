package com.lemon.shoeshop

import android.app.Activity
import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.fragment.app.Fragment


class FragmentOne : Fragment() {
    private val ARG_PARAM = "param_key"
    private val mParam: String? = null
    private val mActivity: Activity? = null

    override fun onAttach(context: Context) {
        super.onAttach(context)
    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        val root = inflater.inflate(R.layout.fragment_one, container, false)
        val view: TextView = root.findViewById(R.id.text)
        return root
    }

    fun newInstance(param:String):FragmentOne{
        var fragmentOne = FragmentOne()
        var bundle = Bundle()
        bundle.putString(ARG_PARAM, param)
        fragmentOne.arguments = bundle
        return fragmentOne
    }

}