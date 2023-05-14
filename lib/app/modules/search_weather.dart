// import 'package:flutter/material.dart';
// import 'package:flutter_typeahead/flutter_typeahead.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../controller/controller.dart';
//
// class SearchPage extends StatefulWidget {
//   const SearchPage({Key? key}) : super(key: key);
//
//   @override
//   _SearchPageState createState() => _SearchPageState();
// }
//
// class _SearchPageState extends State<SearchPage> {
//   final TextEditingController _searchController = TextEditingController();
//   final locationController = Get.put(LocationController());
//
//   final FocusNode _searchFocusNode = FocusNode();
//
//   @override
//   void dispose() {
//     _searchController.dispose();
//     _searchFocusNode.dispose();
//     super.dispose();
//   }
// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Container(
//           width: double.infinity,
//           height: 40,
//           decoration: BoxDecoration(
//               color: Colors.white, borderRadius: BorderRadius.circular(5)),
//           child: Center(
//             child: TextField(
//               controller: _searchController,
//               focusNode: _searchFocusNode,
//               decoration: InputDecoration(
//                 prefixIcon: const Icon(Icons.search),
//                 suffixIcon: IconButton(
//                   icon: const Icon(Icons.clear),
//                   onPressed: () {
//                     _searchController.clear();
//                   },
//                 ),
//                 hintText: 'Search...',
//                 border: InputBorder.none,
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: TypeAheadField(
//         textFieldConfiguration: TextFieldConfiguration(
//           // autofocus: true,
//           style: DefaultTextStyle.of(context)
//               .style
//               .copyWith(fontStyle: FontStyle.italic),
//           decoration: const InputDecoration(border: OutlineInputBorder()),
//         ),
//         suggestionsCallback: (pattern) async {
//           return await locationController.getSuggestions(pattern);
//         },
//         itemBuilder: (context, suggestion) {
//           return ListTile(
//             title: Text(suggestion.name),
//           );
//         },
//         onSuggestionSelected: (suggestion) {
//           debugPrint("onSuggestionSelected $suggestion");
//         },
//       )
//     );
//   }
// }