package com.example.imperative

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import android.widget.Button
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Find views by their IDs
        val tvCount: TextView = findViewById(R.id.tv_count)
        val btnIncrement: Button = findViewById(R.id.btn_increment)
        val btnDecrement: Button = findViewById(R.id.btn_decrement)
        val btnReset: Button = findViewById(R.id.btn_reset)

        // Set click listeners for the buttons
        btnIncrement.setOnClickListener {
            count++
            tvCount.text = "Count: $count"
        }

        btnDecrement.setOnClickListener {
            if (count > 0) count--
            tvCount.text = "Count: $count"
        }

        btnReset.setOnClickListener {
            count = 0
            tvCount.text = "Count: $count"
        }
    }
}
