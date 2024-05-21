import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.tooling.preview.Preview

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            CounterApp()
        }
    }
}

@Composable
fun CounterApp() {
    var count by remember { mutableStateOf(0) }

    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center,
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Text(
            text = "Count: $count",
            fontSize = 32.sp,
            modifier = Modifier.padding(16.dp)
        )
        Row(
            horizontalArrangement = Arrangement.spacedBy(16.dp),
            modifier = Modifier.padding(16.dp)
        ) {
            Button(onClick = { count++ }) {
                Text("Increment")
            }
            Button(onClick = { count-- }) {
                Text("Decrement")
            }
        }
        Button(onClick = { count = 0 }, modifier = Modifier.padding(16.dp)) {
            Text("Reset")
        }
    }
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    CounterApp()
}
