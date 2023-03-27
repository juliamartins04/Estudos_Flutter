import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    final _widget = MediaQuery.of(context).size.width;

    final _byteImage = const Base64Decoder().convert('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGYAAAB4CAYAAAAAA4eJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAFiUAABYlAUlSJPAAAAnxSURBVHhe7Z1/jFxVFcfPm5md/d3ujza0tpS227Vb0u0Pqt3+7uJSE40hQSMEQWBrUUxMDIoYNGoMCUREjfEfEykNkZI0yD/EWCKQrCK1hWh/EUtdl1JRWiwF3M4s7c7Mru+9npl73vjOvPt23pu54vkkL/3uy+zMbM/ez5x734+1li7+yDTYPNQ15fzjctW+lzABnL5pPSaAe99JYALo6enEJMSB+p8WjKI0YvY9e9Dd4XDTjg2Y+P0yYuJFRoyhSGEMxdq8YdBV2ZmzGXdHObQpMO3D//wl9Z4z4wVMHwxkxBiKFMZQrB1DO1yVTWRz7g4HqrV6dWVjY+9iioeOhQ2YzERGjKFIYQylpDIK1UjcXRmnrLn3bMIEMLS5H1N1PP/icUwA5x4+gMnLtd9+GRPA4cfUe+j/6ZOYAI5/9bOY9Pan/rwAk/c5196u3gPd7yAjxlCkMIYSqLI4ujL6/K99qgcTwEDfFZii0xcH1dqhV9/CBLD012OYvJ1bJe0EwemOUv4YGTGGIoUxFF+VcZPN+fPaMAG0tIaboOnoi1JLlVF0tFYLZMQYihTGUHxVRqFaC6svigmdGIdOh1brwxwyYgxFCmMogSqrBqqviRVKBWd7ujDxXVm9oCqbN/YOJlvjJ9TPMrB+Eab4kBFjKFIYQ6mLyihUa9/6wnWYvJ0S7da4/ZSw3/vA7ucwefVFoSqrxWRTRoyhSGEMJXKVzelux2R3OC/9HRPflVGoyqhedBRH0VEW91oUrivbedtnMMWHjBhDkcIYSiQqo/o6+eYZTADv/UOts3HrY3RCR/dzJ0tEBT3Zg3sP3LrZfT+6H1N8yIgxFCmMoYRSGVUWherry3d/FxPAg1//DiY9lVFdcHCTu+5GdXSVwr1n2jFG9d6iREaMoUhhDMW6+cZPa6uMKovC6UtnUkkVcWLPMCaeFcN7MHmhiqNa41RG4bRG4Sabzf3qqu6WsxOY7J99XgsmHu7xzn4ZMYYihTEU65otG7VVRpX11tEjmACuWL0Gk57KwupLB6o4qrXlH5qPSQ9Oa2FVFhZR2f8IUhhDsX7x1P4ZrZWFVRmFquA3d/Vh8rJkYCOm8FCthT1xgjtUQZGu7P8YKYyhWC+P5rVVduTYs5iiU9kPhhoxAXzz+UuYeMJOQuNWWffclZiiRUaMoUhhDCWUyr40vBWT9+gkRzVdmQ5c53bq0B8xAXzy569i0tNaHF1Z2P0OMmIMRQpjKIFHMOk9wbjlfdqZnD/3CiY9FYTtysKqT0dlb5+/gEnvtF6driysysqREWMoUhhDCezK6KSSEpXKKNxdOCjVqIxeR0mPbFajsriQEWMoUhhDmfGyP1XZlVcNYvLyxukRTDx07Su9/S5MtnaWDmCy9fLaIUwAJx+6HZMey+99DJP3OWmHxqmMg97DLS5kxBiKFMZQQqmM6mvW4PWYeGafGscE8O8lszABjI88jQng2C7/LmvVI6qbooQ9eYM7D412aHQSTdcA9w+sxlR7ZMQYSmJqKv4PMiE81uJFq6ctKwmWZTlfXt7LwHVfOnAdGqey5htvxhQdvR//HiY9lVFSs2orl8RkLgO5XBbyhUmYnpbRYwrur8HUdB7y+QnI5bMwNeX8xsxoaiNEiNXXN+RW4VKnWn7vznVDS8scW29JTzfFdVkctPva+jUMZbzwYww2UZ0uy8GdRkv1pfM+o7ozxsCqtZi8HDp22L8ry2TehGz2X6K2OsJ+omWzZ2Fi4pxtNdFaPSipjKOrqxcaGvyvbwyCdmJUEa0r85jsX4BXUpi8uqBHNqOCO0Ia9r1VozKqr7+dHMXkZdny3uAJZiZzRpRWBwILMzmZgYsX/W8VJcSHb1dWTrKpFdoWrYTZr6vlca5b09EXheri7ROqO5qzQumC+96wPLNTvdaKT4R7rai0xnVi5QSOGIfCxay7CbVDqzAOuWz8x7kFRWBXViSdbofOzmX4lZ7KKFRrVFkn9isVcOpbvXwxpuo4evJ1TLyaOMXRx1Ci6tAo7ATTj0Ih+GQ8IToSlqU3gby8hibUCltl19qVSVTsyoosSl+NSU9lo7/9PibvkjuHCSrj4H6WqNbNyrFVVvkYTBErkcQk1AJbZZgCsFJpTEItsFX2MVtlwdVpbJwNHR1L8SseTmX5fyqNcBcWhZ30cYqjyqJwk1naGdJTcOmFUakF6rWoynalgpuiX5G/VKWLtsrS6ZktZAozQ6tdds4HaGwMPjAmRIfvWlnju2p4OvtTrR3QurDvv45gHt6jzjMr0rPko5jCq4wSVmscOvqicCqj0COhY6fUnwB2WLc13N/I5AgeMVYC0h3qPpEjIz90N7+iCAB/euFAaauGwMI0tHW6m1BbKqoskUhBas01kEg3u1/rjBKqMnpyxdOPP4EJoL93CSb+wiKds+6rgXstqrLjo6cwAVx/6+cwVVaZHw/2rsKk36GxIyZhTyjb2xfC0b0PuAURdc2c+0aPlTZdfAvjjJS2tgXQ1CQKqxdeldkf9FYyCXMn58DBg4+4D9Dhd0f+iglg5w23YOKvl+Q6MaoXCj2FNTNewATQNst/mYh7DHfTbE6bOu9/z+M/wQSwbfMWTJXR6dzcEePMU6xkCtLtXdB25dVaRXGKUdyEy/z+xT+UtkrodG2JZLLBXW5pntcDzfOXlT7ohfpibdnylelkssn9wpmfBHHgwF8wBfP5W/yvl/zlXnVdJH0MdwY+pybuzHy6FK+jNaoyqqbhW+/G5IU+phI6auO0Zo+YeIoiKLVVgtNa8MxfqAvW9u33uF1ZpRFT/IBvmFDrVLkWtQYVdj+FdnHcJd7chUVUKXlyg48771CHQqnWuHv+03uU6WoqLEFaK1daorj2xSFdVzQEaa1cZ6IyQ2EL43zQO5ujo+JWDfR56EZx9FXcHH0VNx1SKau0cdDnpK9VS4KagSIyYgyCdmhSGEOxpm0wl+A+8Kl64ujKuEu28+Pq+pzd+x7FBFC48B4mni/uUh2azvPvfeJnmOJnw0b/e7I9tW6djBhTkcIYiq/K6rX0orO2VihMYgrPHbfdicnLM7sfxuSlrUKHFwXzt23D5MU5CiwjxlCkMIbiqzKHos7CdlmUOLo4SuKCuqF0oVEt6ScvqaV+ul+ni6M0NAWrLHfR97+v4vcGrZuJygzDKUjxLCMpjKGwKitCJ5tUNWEJq7Kw0OehipucVGthOmqicJqiJNs7MHkVSl+XMjSk/tRLOXTpPzE4+A1wNo7taz6MSagGpyC6RXEQlRmK1hHMInTiqdM1he2+uP0c3OPDqoxTlnMJfRGdro/bP7i+HxMPPbXYOepaGjFrh+/HxLNpk7o4VgjGKUhQUWgnRhGVGUpJZZQP6qlM779/HpOX5uZuTNGhYxeu6Xrj9Aj8B9lawpmFsqriAAAAAElFTkSuQmCC');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Mickey'),
            Image.asset(
              'images/mickey_img.webp',
              width: _widget * 0.4,
            ),
            const Text('Morcego'),
            Image.network(
              'https://imagensemoldes.com.br/wp-content/uploads/2020/05/silhoueta-morcego-png-1024x1024.png',
              width: _widget * 0.4,
            ),
           const  Text('data'),
            Image.memory(_byteImage)
            // Image.
          ],
        ),
      )
    );
  }
}
