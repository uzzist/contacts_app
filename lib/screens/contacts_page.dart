import 'package:contacts_app/components/search_bar.dart';
import 'package:contacts_app/screens/about_page.dart';
import 'package:contacts_app/utils/constants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../models/information_class.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Main')),
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          const SearchBar(),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Card(
                  color: sideColor,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutPage(
                              initial: data[index].initial,
                              name: data[index].name,
                              number: data[index].number,
                              email: data[index].email,
                            ),
                          ),
                        );
                      },
                      leading: CircleAvatar(
                        backgroundColor: contentColor,
                        radius: 50.0,
                        child: Text(
                          data[index].initial,
                          style: const TextStyle(color: sideColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                      title: Text(
                        data[index].name,
                        style: const TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        data[index].number,
                        style: const TextStyle(color: Colors.black),
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PopupMenuButton(
                            icon: const Icon(
                              Icons.more_vert,
                              color: contentColor,
                            ),
                            itemBuilder: (context) => [
                              const PopupMenuItem(
                                value: 1,
                                child: Text('Edit'),
                              ),
                              const PopupMenuItem(
                                value: 2,
                                child: Text('Delete'),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.phone,
                            color: contentColor,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: contentColor,
        backgroundColor: sideColor,
        items: const [
          Icon(
            Icons.home,
            color: sideColor,
          ),
          Icon(
            Icons.account_box_rounded,
            color: sideColor,
          ),
          Icon(
            Icons.settings,
            color: sideColor,
          )
        ],
      ),
    );
  }
}
