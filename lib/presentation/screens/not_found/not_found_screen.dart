import 'package:core/core.dart';
import 'package:dating_app/core/constants/enums/routes_enum.dart';
import 'package:dating_app/core/constants/image_constants.dart';
import 'package:dating_app/core/router/app_router.dart';
import 'package:dating_app/injection.dart';
import 'package:dating_app/presentation/widgets/app_button/app_elevated_button.dart';
import 'package:dating_app/presentation/widgets/app_container/app_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotFoundScreen extends StatefulWidget {
  const NotFoundScreen({super.key});

  @override
  State<NotFoundScreen> createState() => _NotFoundScreenState();
}

class _NotFoundScreenState extends State<NotFoundScreen> {
  void _onBackButton() {
    if (Navigator.canPop(context)) {
      Injection.read<AppRouter>().goBack();
    } else {
      Injection.read<AppRouter>().replaceAll(RoutesEnum.authentication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Center _buildBody() {
    return Center(
      child: SingleChildScrollView(
        child: Builder(
          builder: (ctx) {
            return AppContainer(
              containerContext: ctx,
              padding: context.ext.padding.vertical.lg,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: RemovePaddingList.generate(
                  padding: context.ext.padding.horizontal.lg,
                  children: [
                    _notFoundTitle(),
                    context.ext.sizedBox.height.lg,
                    _notFoundSubTitle(),
                    context.ext.sizedBox.height.xxxl,
                    _notFoundDescription(),
                    ...context.ext.sizedBox.height.xxxl.ext.widget * 3,
                    RemovePaddingItem(
                      child: _plugImage(),
                    ),
                    ...context.ext.sizedBox.height.xxxl.ext.widget * 2,
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: _backHomeButton(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Text _notFoundTitle() {
    return const Text(
      '404',
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text _notFoundSubTitle() {
    return const Text(
      'Page not found',
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text _notFoundDescription() {
    return const Text(
      'It seems like the page you are looking for does not exist.',
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }

  Row _plugImage() {
    return Row(
      children: [
        Expanded(
          child: SvgPicture.asset(
            ImageConstants.notFoundCableForPlugSvg,
          ),
        ),
        SvgPicture.asset(
          ImageConstants.notFoundMalePlugSvg,
        ),
        context.ext.sizedBox.width.lg,
        SvgPicture.asset(
          ImageConstants.notFoundFemalePlugSvg,
        ),
        Expanded(
          child: SvgPicture.asset(
            ImageConstants.notFoundCableForPlugSvg,
          ),
        ),
      ],
    );
  }

  AppElevatedButton _backHomeButton() {
    return AppElevatedButton(
      isInvertedStyle: true,
      onPressed: _onBackButton,
      child: const Text('Back'),
    );
  }
}
