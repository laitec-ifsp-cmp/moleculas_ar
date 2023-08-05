import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moleculas_ar/modules/molecule_category/molecule_category_controller.dart';
import 'package:moleculas_ar/modules/molecule_object/molecule_object_page.dart';
import 'package:moleculas_ar/shared/models/molecules_category_model.dart';
import 'package:moleculas_ar/shared/res/app_res.dart';
import 'package:moleculas_ar/shared/shimmers/item_list/item_list_shimmer.dart';
import 'package:moleculas_ar/shared/utils/app_state.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

class MoleculeCategoryPage extends StatefulWidget {
  final String appBarTitle;
  final MoleculeCategories category;

  const MoleculeCategoryPage({
    Key? key,
    required this.appBarTitle,
    required this.category,
  }) : super(key: key);

  @override
  State<MoleculeCategoryPage> createState() => _MoleculeCategoryPageState();
}

class _MoleculeCategoryPageState extends State<MoleculeCategoryPage> {
  final controller = MoleculeCategoryController();

  @override
  void initState() {
    super.initState();
    controller.getMolecules(widget.category);
    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: widget.appBarTitle),
      body: BodyGradientMarginWidget(
        child: (controller.state == AppState.success)
            ? ListView.separated(
                itemCount: controller.molecules!.length,
                itemBuilder: (context, i) => IconTextOutlinedButtonWidget(
                  imagePath: (controller.molecules![i].iconPath).isNotEmpty
                      ? controller.molecules![i].iconPath
                      : AppRes.images.iconSingleMolecule,
                  title: controller.molecules![i].name,
                  subTitle: controller.molecules![i].molecularFormula,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => MoleculeObjectPage(
                          name: controller.molecules![i].name,
                          formula: controller.molecules![i].molecularFormula,
                          objectPath: controller.molecules![i].objectPath,
                          structuralFormulaImagePath: controller
                              .molecules![i].structuralFormulaImagePath,
                        ),
                      ),
                    );
                  },
                ),
                padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 24.w),
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(height: 20.h),
              )
            : ItemListShimmer(listLength: controller.molecules?.length),
      ),
    );
  }
}
