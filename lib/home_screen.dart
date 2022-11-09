import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Whatsapp'),
            bottom: const TabBar(
              tabs: [
                Tab(child: Icon(Icons.camera_alt)),
                Tab(child: Text('chats')),
                Tab(child: Text('Status')),
                Tab(child: Text("Calls")),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: Icon(Icons.more_horiz_outlined),
                itemBuilder: (
                  context,
                ) =>
                    const [
                  PopupMenuItem(value: '1', child: Text('New Group')),
                  PopupMenuItem(value: '2', child: Text('Settings')),
                  PopupMenuItem(value: '3', child: Text('Log Out')),
                ],
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          body: TabBarView(
            children: [
              Text('camera'),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://ssb.wiki.gallery/images/thumb/5/53/Young_Link.png/250px-Young_Link.png'),
                      ),
                      title: Text('Striker'),
                      subtitle: Text('where is my dog?'),
                      trailing: Text('7:00AM'),
                    );
                  }),
              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:Border.all(
                            color:Colors.green,
                            width:4,
                          )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://ssb.wiki.gallery/images/thumb/5/53/Young_Link.png/250px-Young_Link.png'),
                        ),),
                        title: Text('Striker'),
                        subtitle: Text('35min ago'),



                    );
                  }),
      

              ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return  ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://ssb.wiki.gallery/images/thumb/5/53/Young_Link.png/250px-Young_Link.png'),
                      ),
                      title: Text('Striker'),
                      subtitle: Text(index/2==0?'You have missed call':'call time is 03:00PM'),
                      trailing: Icon(index/2==0?Icons.phone:Icons.video_call),
                    );
                  }),
            ],
          ),
        ));
  }
}
