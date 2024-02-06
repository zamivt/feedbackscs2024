import 'package:feedbackscs2024/features/doc/tasks/view/doc_add_long_single_task.dart';
import 'package:feedbackscs2024/features/doc/tasks/view/doc_list_candidate_short_task_lie.dart';
import 'package:feedbackscs2024/features/doc/tasks/view/doc_list_candidate_short_task_move.dart';
import 'package:feedbackscs2024/features/doc/tasks/view/doc_list_candidate_short_task_seat.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/doc/auth/view/doc_authscren.dart';
import '../../features/doc/mainscreen/view/doc_mainscreen.dart';
import '../../features/doc/patient/view/doc_patient.dart';
import '../../features/doc/report/view/doc_report.dart';
import '../../features/doc/tasks/view/doc_add_short_range_task.dart';
import '../../features/doc/tasks/view/doc_add_short_single_task.dart';
import '../../features/doc/tasks/view/doc_list_short_task_lie.dart';
import '../../features/doc/tasks/view/doc_list_short_task_move.dart';
import '../../features/doc/tasks/view/doc_list_short_task_seat.dart';
import '../../features/doc/tasks/view/doc_tasks.dart';
import '../../features/doc/tasks/widgets/beforetasks/doc_taskshort_before.dart';
import '../../features/patient/battery/view/battery_list.dart';
import '../../features/patient/battery/view/battery_page.dart';
import '../../features/patient/help/view/help_page.dart';
import '../../features/patient/help/view/neuroinstpage.dart';
import '../../features/patient/mainscreen/view/patient_main_empty_screen.dart';
import '../../features/patient/mainscreen/view/patient_main_full_screen.dart';
import '../../features/patient/profile/view/profile_page.dart';
import '../../features/patient/report/view.dart/report_page.dart';
import '../../features/patient/tasks/longtest/view/longtest1.dart';
import '../../features/patient/tasks/longtest/view/longtest2.dart';
import '../../features/patient/tasks/longtest/view/longtest3.dart';
import '../../features/patient/tasks/shorttest/view/shorttest1.dart';
import '../../features/patient/tasks/shorttest/view/shorttest2.dart';
import '../../features/patient/tasks/shorttest/view/shorttest3.dart';
import '../../features/patient/tasks/shorttest/view/shorttest4.dart';
import '../../features/patient/tasks/taskpage.dart';
import '../ui/widgets/error_page.dart';
import '../../features/welcome/widgets/license.dart';
import '../../features/welcome/view/welcome_page.dart';
import 'route_names.dart';

const isLoggedInn = false;
final GlobalKey<NavigatorState> _rootdocnavigator =
    GlobalKey(debugLabel: 'rootdoc');
final GlobalKey<NavigatorState> _shelldocnavigator =
    GlobalKey(debugLabel: 'shelldoc');
final GlobalKey<NavigatorState> _shellpatientnavigator =
    GlobalKey(debugLabel: 'shellpatient');
final GlobalKey<NavigatorState> _shellemptypatientnavigator =
    GlobalKey(debugLabel: 'shellemptypatient');

final GoRouter router = GoRouter(
  navigatorKey: _rootdocnavigator,
  errorBuilder: (context, state) => const ErrorPage(),
  initialLocation: '/welcome',
  routes: [
    GoRoute(
        name: RouteNames.welcome,
        path: '/welcome',
        builder: (context, state) => const WelcomePage()),
    GoRoute(
        name: RouteNames.licenseapp,
        path: '/licenseapp',
        builder: (context, state) => const LicenseAppPage()),
    GoRoute(
        name: RouteNames.neuroinst,
        path: '/neuroinst',
        builder: (context, state) => const NeuroinstPage()),
    // empty-patient
    GoRoute(
        name: RouteNames.patientemptymainpage,
        path: '/patientempty',
        builder: (context, state) => const PatientMainEmptyScreen(
              child: ProfilePage(),
            )),
    ShellRoute(
        navigatorKey: _shellpatientnavigator,
        builder: (context, state, child) => PatientMainEmptyScreen(
              key: state.pageKey,
              child: child,
            ),
        routes: [
          GoRoute(
            path: '/patientempty/profile',
            name: RouteNames.patientemptyprofile,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: const ProfilePage(), key: state.pageKey);
            },
          ),
          GoRoute(
            path: '/patientempty/help',
            name: RouteNames.patientemptyhelp,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: const HelpPage(), key: state.pageKey);
            },
          ),
        ]),
// patient-full
    GoRoute(
        name: RouteNames.patientmainpage,
        path: '/patient',
        builder: (context, state) => const PatientMainFullScreen(
              child: ProfilePage(),
            )),
    ShellRoute(
        navigatorKey: _shellemptypatientnavigator,
        builder: (context, state, child) => PatientMainFullScreen(
              key: state.pageKey,
              child: child,
            ),
        routes: [
          GoRoute(
            path: '/patient/profile',
            name: RouteNames.patientprofile,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: const ProfilePage(), key: state.pageKey);
            },
          ),
          GoRoute(
            path: '/patient/tasks',
            name: RouteNames.patienttasks,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: const TaskPage(), key: state.pageKey);
            },
          ),
          GoRoute(
            path: '/patient/report',
            name: RouteNames.patientreport,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: const ReportPage(), key: state.pageKey);
            },
          ),
          GoRoute(
            path: '/patient/battery',
            name: RouteNames.patientbattery,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: const BatteryPage(), key: state.pageKey);
            },
          ),
          GoRoute(
            path: '/patient/help',
            name: RouteNames.patienthelp,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: const HelpPage(), key: state.pageKey);
            },
          ),
        ]),
    GoRoute(
        name: RouteNames.patientbatterylist,
        path: '/patient/batterulist',
        builder: (context, state) => const BatteryList()),
//shorttest
    GoRoute(
        name: RouteNames.shorttest1,
        path: '/patient/shorttes1',
        builder: (context, state) => const ShortTest1()),
    GoRoute(
        name: RouteNames.shorttest2,
        path: '/patient/shorttes2',
        builder: (context, state) => const ShortTest2()),

    GoRoute(
        name: RouteNames.shorttest3,
        path: '/patient/shorttes3',
        builder: (context, state) => const ShortTest3()),
    GoRoute(
        name: RouteNames.shorttest4,
        path: '/patient/shorttes4',
        builder: (context, state) => const ShortTest4()),
//longtest
    GoRoute(
        name: RouteNames.longtest1,
        path: '/patient/longtes1',
        builder: (context, state) => const LongTest1()),
    GoRoute(
        name: RouteNames.longtest2,
        path: '/patient/longtes2',
        builder: (context, state) => const LongTest2()),
    GoRoute(
        name: RouteNames.longtest3,
        path: '/patient/longtest3',
        builder: (context, state) => LongTest3()),
    //doc
    GoRoute(
        name: RouteNames.docauth,
        path: '/doc/auth',
        builder: (context, state) => const DocAuthMainScreen()),
    GoRoute(
        name: RouteNames.docmainpage,
        path: '/doc',
        builder: (context, state) => const DocMainScreen(child: DocPatient())),
    ShellRoute(
        navigatorKey: _shelldocnavigator,
        builder: (context, state, child) => DocMainScreen(
              key: state.pageKey,
              child: child,
            ),
        routes: [
          GoRoute(
            path: '/doc/patient',
            name: RouteNames.docpatients,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: const DocPatient(), key: state.pageKey);
            },
          ),
          GoRoute(
            path: '/doc/tasks',
            name: RouteNames.doctasks,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: const DocTasks(), key: state.pageKey);
            },
          ),
          GoRoute(
            path: '/doc/report',
            name: RouteNames.docreport,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: const DocReport(), key: state.pageKey);
            },
          ),
        ]),
    GoRoute(
        name: RouteNames.docaddsingletask,
        path: '/doc/addsingletask',
        builder: (context, state) => const DocAddSingleTask()),
    GoRoute(
        name: RouteNames.docaddrangetask,
        path: '/doc/addrangetask',
        builder: (context, state) => const DocAddRangeTask()),
    GoRoute(
        name: RouteNames.docaddlongtask,
        path: '/doc/addlongtask',
        builder: (context, state) => const DocAddLongSingleTask()),
    GoRoute(
        name: RouteNames.docdocaddbeforetask,
        path: '/doc/addbeforetask',
        builder: (context, state) => const DocTaskShortBefore()),
    GoRoute(
        name: RouteNames.docshorttaskmove,
        path: '/doc/shorttskmove',
        builder: (context, state) => const DocListShortTaskMove()),
    GoRoute(
        name: RouteNames.docshorttaskseat,
        path: '/doc/shorttskseat',
        builder: (context, state) => const DocListShortTaskSeat()),
    GoRoute(
        name: RouteNames.docshorttasklie,
        path: '/doc/shorttsklie',
        builder: (context, state) => const DocListShortTaskLie()),
    GoRoute(
        name: RouteNames.doccandidateshorttaskmove,
        path: '/doc/candidateshorttskmove',
        builder: (context, state) => const DocListCandidateShortTaskMove()),
    GoRoute(
        name: RouteNames.doccandidateshorttaskseat,
        path: '/doc/candidateshorttskseat',
        builder: (context, state) => const DocListCandidateShortTaskSeat()),
    GoRoute(
        name: RouteNames.doccandidateshorttasklie,
        path: '/doc/unfullfilledshorttsklie',
        builder: (context, state) => const DocListCandidateShortTaskLie()),
  ],
);
