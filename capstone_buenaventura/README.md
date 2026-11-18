# School Announcement Board

**Name:** BUENAVENTURA, EMMANUEL
**Workstation Number:** 04

## Project Description

School Announcement Board is a Flutter mobile app that lets students view
school announcements in one place. An admin can post new text-only
announcements through a simple form. Later versions will use Firebase for
storage and push notifications for new posts.

## Features (Week 1)

- List of announcements (dummy data)
- Admin screen with a form to post a new announcement
- Navigation between Home and Admin screens

## Project Structure

lib/
├── main.dart
├── models/      (Announcement model)
├── data/        (dummy data)
├── screens/     (home_screen, admin_screen)
└── widgets/     (announcement_card)

## How to Run

flutter pub get
flutter run