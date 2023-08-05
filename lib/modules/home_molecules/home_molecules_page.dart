import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moleculas_ar/shared/models/molecules_category_model.dart';
import 'package:moleculas_ar/shared/utils/app_state.dart';
import 'package:moleculas_ar/modules/home_molecules/home_molecules_controller.dart';
import 'package:moleculas_ar/modules/molecule_category/molecule_category_page.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/shimmers/item_list/item_list_shimmer.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

class HomeMoleculesPage extends StatefulWidget {
  const HomeMoleculesPage({Key? key}) : super(key: key);

  @override
  State<HomeMoleculesPage> createState() => _HomeMoleculesPageState();
}

class _HomeMoleculesPageState extends State<HomeMoleculesPage> {
  final controller = HomeMoleculesController();

  @override
  void initState() {
    super.initState();
    controller.getMoleculesCategories();
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return (controller.state == AppState.success)
        ? ListView.separated(
            itemCount: controller.moleculesCategories!.length,
            itemBuilder: (context, i) => IconTextOutlinedButtonWidget(
              imagePath:
                  (controller.moleculesCategories![i].iconPath).isNotEmpty
                      ? controller.moleculesCategories![i].iconPath
                      : AppRes.images.iconThreeMolecules,
              title: controller.moleculesCategories![i].title,
              onPressed: () {
                goToMoleculeCategoryPage(
                  context: context,
                  appBarTitle: controller.moleculesCategories![i].title,
                  category: controller.moleculesCategories![i].category,
                );
              },
            ),
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 24.w),
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 20.h),
          )
        : ItemListShimmer(listLength: controller.moleculesCategories?.length);
  }

  void goToMoleculeCategoryPage({
    required dynamic context,
    required String appBarTitle,
    required MoleculeCategories category
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MoleculeCategoryPage(
          appBarTitle: appBarTitle,
          category: category,
        ),
      ),
    );
  }
}
