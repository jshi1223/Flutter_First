import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  // Dummy data for now
  final double temperature = 26.5; // in °C
  final double soilMoisture = 45.0; // in %
  final double lightIntensity = 700.0; // in lux

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MetricCard(
              icon: Icons.thermostat,
              label: "Temperature",
              value: "$temperature °C",
              color: Colors.redAccent,
            ),
            SizedBox(height: 20),
            MetricCard(
              icon: Icons.water_drop,
              label: "Soil Moisture",
              value: "$soilMoisture %",
              color: Colors.blueAccent,
            ),
            SizedBox(height: 20),
            MetricCard(
              icon: Icons.wb_sunny,
              label: "Light Intensity",
              value: "$lightIntensity lux",
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}

class MetricCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;

  const MetricCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Row(
          children: [
            Icon(icon, size: 40, color: color),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  value,
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
