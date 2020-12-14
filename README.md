# Pet Me - InOut 7.0

A flutter app for managing pet essentails for owners.

**Task List**

| sl no. | Task                                    | Assignee | Progress    |
| ------ | --------------------------------------- | -------- | ----------- |
| 1      | Set up firebase                         |          | No          |
| 2      | Database Design                         | Sameer   | In-Progress |
| 3      | UI Design                               | Vanshika | In-Progress |
| 4      | DashBoard                               | Akanksha | In-Progress |
| 5      | find a Mate                             |          | No          |
| 6      | Adopt don't shop                        |          | No          |
| 7      | Discussions                             |          | No          |
| 8      | Store                                   |          | No          |
| 9      | Lost and found                          |          | No          |
| 10     | Authentication with firebase            |          | No          |
| 11     | Vet and Consultation                    |          | No          |
| 12     | For Hire                                |          | No          |
| 13     | Train your pets, Health tips and tricks |          | No          |
| 14     | Auth View                               | Sameer   | Yes         |
| 15     | Drawer Profile                          | Sameer   | In-Progress |

**Database Schema**

| collections            | documents  | collection           | document  | collection | document  |
| ---------------------- | ---------- | -------------------- | --------- | ---------- | --------- |
| users                  | userId     | pets                 | petId     |
| users                  | userId     | dashBoard            |
| mates                  | petId      | matches/chats chatId |
| adoption               | petId      |
| Store/products         | productId  |
| Store/categories       | categoryId |
| vets                   | vetId      |
| consultation           | docterIds  |
| Forums(Reddit threads) | postId     | comment              | commentId | comment    | commentId |
| hire                   | dummyId    | centers              |
| hire                   | dummyId    | individuals          |
| Events/Meetups         | eventId    |
| Lost/Found             | caseId     |

**Resources**

- [Pet Ui](https://www.youtube.com/watch?v=Cg9vLhfvWBE&ab_channel=TheGrowingDeveloper)
- [StateNotifier](https://www.youtube.com/watch?v=nUF0IrEjWj0&ab_channel=RobertBrunhage)
- [Riverpod](https://www.youtube.com/watch?v=GVspNESSess&t=1s&ab_channel=RobertBrunhage)
- [Hooks](https://www.youtube.com/watch?v=A1DUBgIsCv8&ab_channel=RobertBrunhage)
- [Freezed](https://www.youtube.com/watch?v=3HY6uFewwi4&t=921s&ab_channel=LearnFlutterCode)

**Structure**

```
├── services
├── models
├── router
├── ui
│   ├── dashboard
│   └── home
├── utils
└── widgets
```
