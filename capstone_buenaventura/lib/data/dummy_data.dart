import '../models/announcement.dart';

final List<Announcement> dummyAnnouncements = [
  Announcement(
    id: '1',
    title: 'No classes on Friday',
    body: 'School is closed this Friday due to a faculty meeting.',
    createdAt: DateTime.now().subtract(const Duration(hours: 2)),
  ),
  Announcement(
    id: '2',
    title: 'Science Fair Registration',
    body: 'Sign up at the science department by next Wednesday.',
    createdAt: DateTime.now().subtract(const Duration(days: 1)),
  ),
  Announcement(
    id: '3',
    title: 'Library hours extended',
    body: 'The library will stay open until 7 PM during exam week.',
    createdAt: DateTime.now().subtract(const Duration(days: 3)),
  ),
  Announcement(
    id: '4',
    title: 'Foundation Day Celebration',
    body: 'Join us at the school gym on Monday for performances, games, and food booths. Wear your class shirt!',
    createdAt: DateTime.now().subtract(const Duration(days: 4)),
  ),
  Announcement(
    id: '5',
    title: 'Parent-Teacher Conference',
    body: 'Report cards will be distributed this Saturday, 8 AM to 12 NN. Parents are encouraged to attend.',
    createdAt: DateTime.now().subtract(const Duration(days: 5)),
  ),
  Announcement(
    id: '6',
    title: 'Canteen Menu Update',
    body: 'New healthy meal options are now available, including fruit cups and vegetable sandwiches.',
    createdAt: DateTime.now().subtract(const Duration(days: 6)),
  ),
  Announcement(
    id: '7',
    title: 'Basketball Tryouts',
    body: 'Varsity tryouts are on Thursday at 3 PM. Bring your PE uniform and a signed medical clearance.',
    createdAt: DateTime.now().subtract(const Duration(days: 7)),
  ),
  Announcement(
    id: '8',
    title: 'Fire Drill This Week',
    body: 'A school-wide fire drill will be held on Wednesday morning. Please follow your teacher\'s instructions.',
    createdAt: DateTime.now().subtract(const Duration(days: 8)),
  ),
  Announcement(
    id: '9',
    title: 'Uniform Reminder',
    body: 'Students must wear the complete school uniform and ID every day starting next week.',
    createdAt: DateTime.now().subtract(const Duration(days: 9)),
  ),
  Announcement(
    id: '10',
    title: 'Book Drive for Charity',
    body: 'Donate your gently used books at the library until the end of the month. All books go to local community libraries.',
    createdAt: DateTime.now().subtract(const Duration(days: 10)),
  ),
];