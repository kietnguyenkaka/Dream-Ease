import 'package:flutter/material.dart';
import 'package:sleep_demo/presentation/m_n_h_nh_loading_screen/m_n_h_nh_loading_screen.dart';
import 'package:sleep_demo/presentation/input_name_screen/input_name_screen.dart';
import 'package:sleep_demo/presentation/suggest_screen/suggest_screen.dart';
import 'package:sleep_demo/presentation/homeone_screen/homeone_screen.dart';
import 'package:sleep_demo/presentation/music_playlist_screen/music_playlist_screen.dart';
import 'package:sleep_demo/presentation/music_song_screen/music_song_screen.dart';
import 'package:sleep_demo/presentation/music_m_gi_t_t_nh_c_screen/music_m_gi_t_t_nh_c_screen.dart';
import 'package:sleep_demo/presentation/tracking_gi_c_ng_container_screen/tracking_gi_c_ng_container_screen.dart';
import 'package:sleep_demo/presentation/c_c_tips_screen/c_c_tips_screen.dart';
import 'package:sleep_demo/presentation/khi_n_v_c_c_tips_screen/khi_n_v_c_c_tips_screen.dart';
import 'package:sleep_demo/presentation/sleep_mode_screen/sleep_mode_screen.dart';
import 'package:sleep_demo/presentation/suggest_one_screen/suggest_one_screen.dart';
import 'package:sleep_demo/presentation/sleep_report_screen/sleep_report_screen.dart';
import 'package:sleep_demo/presentation/profile_screen/profile_screen.dart';
import 'package:sleep_demo/presentation/feedbacks_screen/feedbacks_screen.dart';
import 'package:sleep_demo/presentation/tr_gi_p_y_t_screen/tr_gi_p_y_t_screen.dart';
import 'package:sleep_demo/presentation/danh_hi_u_screen/danh_hi_u_screen.dart';
import 'package:sleep_demo/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String mNHNhLoadingScreen = '/m_n_h_nh_loading_screen';

  static const String inputNameScreen = '/input_name_screen';

  static const String suggestScreen = '/suggest_screen';

  static const String homePage = '/home_page';

  static const String homeoneScreen = '/homeone_screen';

  static const String musicPage = '/music_page';

  static const String musicPlaylistScreen = '/music_playlist_screen';

  static const String musicSongScreen = '/music_song_screen';

  static const String musicMGiTTNhCScreen = '/music_m_gi_t_t_nh_c_screen';

  static const String trackingGiCNgPage = '/tracking_gi_c_ng_page';

  static const String trackingGiCNgContainerScreen =
      '/tracking_gi_c_ng_container_screen';

  static const String cCTipsScreen = '/c_c_tips_screen';

  static const String khiNVCCTipsScreen = '/khi_n_v_c_c_tips_screen';

  static const String sleepModeScreen = '/sleep_mode_screen';

  static const String suggestOneScreen = '/suggest_one_screen';

  static const String sleepReportScreen = '/sleep_report_screen';

  static const String thNgBOPage = '/th_ng_b_o_page';

  static const String profileScreen = '/profile_screen';

  static const String feedbacksScreen = '/feedbacks_screen';

  static const String trGiPYTScreen = '/tr_gi_p_y_t_screen';

  static const String danhHiUScreen = '/danh_hi_u_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    mNHNhLoadingScreen: (context) => MNHNhLoadingScreen(),
    inputNameScreen: (context) => InputNameScreen(),
    suggestScreen: (context) => SuggestScreen(),
    homeoneScreen: (context) => HomeoneScreen(),
    musicPlaylistScreen: (context) => MusicPlaylistScreen(),
    musicSongScreen: (context) => MusicSongScreen(),
    musicMGiTTNhCScreen: (context) => MusicMGiTTNhCScreen(),
    trackingGiCNgContainerScreen: (context) => TrackingGiCNgContainerScreen(),
    cCTipsScreen: (context) => CCTipsScreen(),
    khiNVCCTipsScreen: (context) => KhiNVCCTipsScreen(),
    sleepModeScreen: (context) => SleepModeScreen(),
    suggestOneScreen: (context) => SuggestOneScreen(),
    sleepReportScreen: (context) => SleepReportScreen(),
    profileScreen: (context) => ProfileScreen(),
    feedbacksScreen: (context) => FeedbacksScreen(),
    trGiPYTScreen: (context) => TrGiPYTScreen(),
    danhHiUScreen: (context) => DanhHiUScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
