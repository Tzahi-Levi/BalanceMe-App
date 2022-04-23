// ================= Profile Page =================
import 'dart:ffi';
import 'package:balance_me/global/types.dart';
import 'package:balance_me/widgets/action_button.dart';
import 'package:flutter/material.dart';
import 'package:balance_me/firebase_wrapper/auth_repository.dart';
import 'package:balance_me/firebase_wrapper/storage_repository.dart';
import 'package:balance_me/global/utils.dart';
import 'package:balance_me/localization/resources/resources.dart';
import 'package:balance_me/widgets/generic_edit_button.dart';
import 'package:balance_me/widgets/user_avatar.dart';
import 'package:balance_me/widgets/appbar.dart';
import 'package:balance_me/widgets/text_box_with_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:balance_me/widgets/image_picker.dart';
import 'package:balance_me/firebase_wrapper/google_analytics_repository.dart';
import 'package:balance_me/global/constants.dart' as gc;

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key, required this.authRepository, required this.userStorage}) : super(key: key);

  final AuthRepository authRepository;
  final UserStorage userStorage;

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  late TextEditingController _controllerFirstName;
  late TextEditingController _controllerLastName;
  bool _isDisabledFirstName = true;
  bool _isDisabledLastName = true;
  bool _isLoading = false;

  @override
  void dispose() {
    _controllerFirstName.dispose();
    _controllerLastName.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controllerFirstName = TextEditingController(text: _getFirstName());
    _controllerLastName = TextEditingController(text: _getLastName());
  }

  String? _getFirstName() {
    if (widget.authRepository.status == AuthStatus.Authenticated && widget.userStorage.userData != null && widget.userStorage.userData!.firstName != null) {
      return widget.userStorage.userData!.firstName!;
    }
    return null;
  }

  String? _getLastName() {
    if (widget.authRepository.status == AuthStatus.Authenticated && widget.userStorage.userData != null && widget.userStorage.userData!.lastName != null) {
      return widget.userStorage.userData!.lastName!;
    }
    return null;
  }

  bool _enableEditCondition(String? value, StringCallback nameCallback) => (value == null || value == nameCallback());

  void _enableEditFirstName(String? value) {
    setState(() {
      _isDisabledFirstName = _enableEditCondition(value, _getFirstName);
    });
  }

  void _enableEditLastName(String? value) {
    setState(() {
      _isDisabledLastName = _enableEditCondition(value, _getLastName);
    });
  }

  void _saveProfile() {
    widget.userStorage.SEND_generalInfo();
    displaySnackBar(context, Languages.of(context)!.strProfileUpdateSuccessful);
  }

  void _updateFirstName() {
    widget.userStorage.userData!.firstName = _controllerFirstName.text;
  }

  void _updateLastName() {
    widget.userStorage.userData!.lastName = _controllerLastName.text;
  }

  List<GestureTapCallback?> _getActions() {
    List<GestureTapCallback?> imageOptions = [];
    imageOptions.add(() {
       _chooseAvatarSource(ImageSource.gallery);
    });
    imageOptions.add(() {
      _chooseAvatarSource(ImageSource.camera);
    });
    if (widget.authRepository.avatarUrl != null) {
      imageOptions.add(() {
        _deleteAvatar();
      });
    }
    return imageOptions;
  }

  void _deleteAvatar() {
    navigateBack(context);
    if (widget.authRepository.avatarUrl == null) {
      displaySnackBar(context, Languages.of(context)!.strDeleteProfileFailed);
      return;
    }
    showYesNoAlertDialog(context, Languages.of(context)!.strDeleteProfileAlert, _deleteImage, _hideFileModal);
  }

  void _hideFileModal() {
    navigateBack(context);
  }

  void _deleteImage() async {
    _hideFileModal();
    await widget.authRepository.deleteAvatarUrl();
    setState(() {});
  }

  List<Widget?> _iconsLeading() {
    List<Widget?> icons = [];
    icons.add(const Icon(gc.galleryChoice, color: gc.darkVeryLightColor));
    icons.add(const Icon(gc.cameraChoice, color: gc.darkVeryLightColor));
    if (widget.authRepository.avatarUrl != null) {
      icons.add(const Icon(gc.deleteIcon,  color: gc.darkVeryLightColor));
    }
    return icons;
  }

  List<String> _getOptionTitles() {
    List<String> titles = [];
    titles.add(Languages.of(context)!.strGalleryOption);
    titles.add(Languages.of(context)!.strCameraOption);

    if (widget.authRepository.avatarUrl != null) {
      titles.add(Languages.of(context)!.strDeleteProfile);
    }
    return titles;
  }

  void _chooseAvatarSource(ImageSource source) async {
    navigateBack(context);
    if (source == ImageSource.gallery) {
      if (await Permission.storage.request().isGranted) {
        await _updateAvatar(ImageSource.gallery);
      }
    } else {
      if (await Permission.camera.request().isGranted) {
        await _updateAvatar(ImageSource.camera);
      }
    }
  }

  Future<void> _updateAvatar(ImageSource image) async {
    ImagePicker picker = ImagePicker();

    XFile? pickedImage = await picker.pickImage(source: image);

    if (pickedImage == null) {
      displaySnackBar(context, Languages.of(context)!.strNoImagePicked);
    } else {
      await widget.authRepository.uploadAvatar(pickedImage);
      setState(() {});
    }
    GoogleAnalytics.instance.logAvatarChange();
  }

  void _showImageSourceChoice() async {
    imagePicker(_getActions(), _iconsLeading(), _getOptionTitles());
  }

  void _saveChanges() {
    _updateFirstName();
    _updateLastName();
    _saveProfile();
    _enableEditFirstName(null);
    _enableEditLastName(null);
    FocusScope.of(context).unfocus(); // Remove the keyboard
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MinorAppBar(Languages.of(context)!.strProfileSettings),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: gc.avatarPadding,
              child: SizedBox(
                width: MediaQuery.of(context).size.width/gc.avatarSizedBoxWidthScale,
                height: MediaQuery.of(context).size.width/gc.avatarSizedBoxHeightScale,
                child: Stack(
                  children: [
                    Center(child: UserAvatar(widget.authRepository, MediaQuery.of(context).size.width/gc.profileAvatarRadiusScale)),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(gc.padAroundPencil, gc.padProfileAvatar, gc.padAroundPencil, gc.padAroundPencil),
                        child: GenericIconButton(onTap: _showImageSourceChoice),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: gc.emailContainerPadding,
              child: Visibility(
                  visible: widget.authRepository.user != null,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).toggleableActiveColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(gc.emailContainerBorderRadius),
                        border: Border.all(color: Theme.of(context).toggleableActiveColor)
                      ),
                      child: Padding(
                        padding: gc.emailContainerPadding,
                        child: Text(
                          widget.authRepository.user!.email!,
                          style: Theme.of(context).textTheme.caption),
                      )),
              ),
            ),
            TextBox(
              _controllerFirstName,
              Languages.of(context)!.strFirstNameLabel,
              labelText: Languages.of(context)!.strFirstName,
              haveBorder: false,
              onChanged: _enableEditFirstName,
            ),
            TextBox(
              _controllerLastName,
              Languages.of(context)!.strLastNameLabel,
              labelText: Languages.of(context)!.strLastName,
              haveBorder: false,
              onChanged: _enableEditLastName,
            ),
            ActionButton(_isLoading, Languages.of(context)!.strUpdate, _isDisabledFirstName && _isDisabledLastName ? null : _saveChanges),
          ],
        ),
      ),
    );
  }
}
