import 'package:animated_sample/ani_base/ani_base_view.dart';
import 'package:animated_sample/ani_base/base_component/ani_base_align.dart';
import 'package:animated_sample/ani_base/base_component/ani_base_builder.dart';
import 'package:animated_sample/ani_base/base_component/ani_base_container.dart';
import 'package:animated_sample/ani_base/base_component/ani_base_cross_fade.dart';
import 'package:animated_sample/ani_base/base_component/ani_base_decobox.dart';
import 'package:animated_sample/ani_base/base_component/ani_base_icon.dart';
import 'package:animated_sample/ani_base/base_component/ani_base_list.dart';
import 'package:animated_sample/ani_base/base_component/ani_base_opacity.dart';
import 'package:animated_sample/ani_base/base_component/ani_base_physical_model.dart';
import 'package:animated_sample/ani_base/base_component/ani_base_posision.dart';
import 'package:animated_sample/ani_base/base_component/ani_base_size.dart';
import 'package:animated_sample/ani_base/base_component/ani_base_switcher.dart';
import 'package:animated_sample/ani_dough/ani_dough_view.dart';
import 'package:animated_sample/ani_focus_img/ani_focus_img_view.dart';
import 'package:animated_sample/ani_loading/ani_loading_view.dart';
import 'package:animated_sample/ani_lottie/ani_lottie_view.dart';
import 'package:animated_sample/ani_transition/ani_transition_view.dart';
import 'package:animated_sample/ani_transition/tran_conponent/ani_tran_fade.dart';
import 'package:animated_sample/ani_transition/tran_conponent/ani_tran_position.dart';
import 'package:animated_sample/ani_transition/tran_conponent/ani_tran_rotation.dart';
import 'package:animated_sample/ani_transition/tran_conponent/ani_tran_scale.dart';
import 'package:animated_sample/ani_transition/tran_conponent/ani_tran_size.dart';
import 'package:animated_sample/ani_transition/tran_conponent/ani_tran_slide.dart';
import 'package:flutter/material.dart';
import 'utils.dart';

class Links {
  final BuildContext context;

  Links(this.context);

  void onAniDough() {
    Utils.navigatePage(context, const AniDoughView());
  }

  void onAniLoading() {
    Utils.navigatePage(context, const AniLoadingView());
  }

  void onAniLottie() {
    Utils.navigatePage(context, const AniLottieView());
  }

  void onAniFocusImg() {
    Utils.navigatePage(context, const AniFocusImgView());
  }

  //{Animated Base.
  void onAniBase() {
    Utils.navigatePage(context, const AniBaseView());
  }

  void onAniBaseAlign() {
    Utils.navigatePage(context, const AniBaseAlign());
  }

  void onAniBaseBuilder() {
    Utils.navigatePage(context, const AniBaseBuilder());
  }

  void onAniBaseContainer() {
    Utils.navigatePage(context, const AniBaseContainer());
  }

  void onAniBaseCrossFade() {
    Utils.navigatePage(context, const AniBaseCrossFade());
  }

  void onAniBaseOpacity() {
    Utils.navigatePage(context, const AniBaseOpacity());
  }

  void onAniBasePosition() {
    Utils.navigatePage(context, const AniBasePosition());
  }

  void onAniBaseSize() {
    Utils.navigatePage(context, const AniBaseSize());
  }

  void onAniBaseDecoBox() {
    Utils.navigatePage(context, const AniBaseDecoBox());
  }

  void onAniBaseSwitcher() {
    Utils.navigatePage(context, const AniBaseSwitcher());
  }

  void onAniBaseIcon() {
    Utils.navigatePage(context, const AniBaseIcon());
  }

  void onAniBasePhysical() {
    Utils.navigatePage(context, const AniBasePhysicalModel());
  }

  void onAniBaseList() {
    Utils.navigatePage(context, const AniBaseList());
  }
  //}

  //{Animated Transition.
  void onAniTransition() {
    Utils.navigatePage(context, const AniTransitionView());
  }

  void onAniTranFade() {
    Utils.navigatePage(context, const AniTranFade());
  }

  void onAniTranPosition() {
    Utils.navigatePage(context, const AniTranPosition());
  }

  void onAniTranRotation() {
    Utils.navigatePage(context, const AniTranRotation());
  }

  void onAniTranScale() {
    Utils.navigatePage(context, const AniTranScale());
  }

  void onAniTranSize() {
    Utils.navigatePage(context, const AniTranSize());
  }

  void onAniTranSlide() {
    Utils.navigatePage(context, const AniTranSlide());
  }
  //}
}
