import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:weather_app/app/controller/controller.dart';
import 'package:weather_app/app/modules/settings.dart';
import 'package:weather_app/models/search_response.dart';
import 'package:weather_app/widgets/weather.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int tabIndex = 0;
  final locationController = Get.put(LocationController());

  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    await locationController.setLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() =>
            Text(locationController.locationResponse.location?.name ?? "")),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () async {
              final result = await showSearch<String>(
                context: context,
                delegate: DataSearch(locationController),
              );
              if (result != null) {
                await locationController.getLocationByName(result);
              }
              print("onPressed $result");
            },
          ),
        ],
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: context.theme.colorScheme.surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.location_on_sharp),
          onPressed: () async {
            await locationController.setLocation();
          },
        ),
      ),
      bottomNavigationBar: Theme(
        data: context.theme.copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: CustomNavigationBar(
          backgroundColor:
              context.theme.bottomNavigationBarTheme.backgroundColor!,
          onTap: (int index) => changeTabIndex(index),
          currentIndex: tabIndex,
          strokeColor: const Color(0x300c18fb),
          items: [
            CustomNavigationBarItem(
              icon: const Icon(Iconsax.cloud_sunny),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Iconsax.setting_2),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: IndexedStack(
        index: tabIndex,
        children: const [
          WeatherPage(),
          SettingsPage(),
        ],
      )),
    );
  }

  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
  }
}

class DataSearch extends SearchDelegate<String> {
  final List<String> data = [];
  LocationController locationController;

  List<SearchResponse> suggestions = [
    SearchResponse(name: 'Thiruvananthapuram'),
    SearchResponse(name: 'Delhi'),
    SearchResponse(name: 'Bangalore'),
  ];

  DataSearch(this.locationController);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = data
        .where((element) => element.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(results[index]),
          onTap: () {
            query = results[index];
            showResults(context);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder<List<SearchResponse>>(
      future: locationController.getSuggestions(query),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data != null && snapshot.data!.isNotEmpty) {
            debugPrint('Has data');
            suggestions = snapshot.data ?? [];
          } else {
            debugPrint('No data');
          }
          debugPrint("Suggestion length ${suggestions.length}");
          return ListView.builder(
            itemCount: suggestions.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(suggestions[index].name),
                onTap: () {
                  Navigator.pop(context, suggestions[index].name);
                },
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
