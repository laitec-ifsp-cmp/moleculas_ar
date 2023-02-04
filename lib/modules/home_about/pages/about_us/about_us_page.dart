import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

import 'widgets/dev_info/dev_info_widget.dart';
import 'widgets/dev_topic/dev_topic_widget.dart';
import 'widgets/info_topic/info_topic_widget.dart';
import 'widgets/institutes_topic/institutes_topic_widget.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: BodyGradientMarginWidget(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const InfoTopicWidget(
                  title: "Sobre o projeto",
                  description: "Este projeto foi desenvolvido pelo grupo de pesquisa L@itec - Instituto Federal de Educação, Ciência e Tecnologia de São Paulo - Câmpus Campinas com o intuito de integrar o processo de ensino-aprendizagem de química com as novas tecnologias de Realidade Aumentada (AR). O ensino de Química, representa um dos mais expressivos exemplos do impacto que as tecnologias móveis podem promover, suscitando a curiosidade dos alunos em compreender e visualizar as teorias sob uma nova perspectiva. Assim, a integração dos smartphones com os aplicativos de Realidade Aumentada é um método inovador de ensinar habilidades de raciocínio espacial aos estudantes de química. Portanto, através do uso de dispositivos móveis pode-se usufruir do aplicativo de AR e visualizar moléculas químicas que ilustram estruturas de moléculas para os temas de geometria molecular, isomeria espacial e estruturas bioquímicas, sendo possível analisar e compreender o tema com recursos de interatividade e visualização dinâmica.",
                ),
                const DevTopicWidget(devInfoList: devInfoList),
                InstitutesTopicWidget(
                  logoList: [
                    Image.asset("assets/images/about_us/laitec.png", height: 80.h),
                    Image.asset("assets/images/about_us/ifsp.png", height: 80.h),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static const List<Widget> devInfoList = [
    DevInfoWidget(
      imagePath: "assets/images/about_us/profile_leticia.jfif",
      name: "Letícia M. R. Trevisan",
      description: "IFSP - Campus Campinas\nUnicamp",
      lattes: "http://lattes.cnpq.br/2662486933723854",
    ),
    DevInfoWidget(
      imagePath: "assets/images/about_us/profile_luiz.jfif",
      name: "Luiz H. F. de Jesus",
      description: "IFSP - Campus Campinas\nUnicamp",
      lattes: "http://lattes.cnpq.br/1440266122800640",
    ),
    DevInfoWidget(
      imagePath: "assets/images/about_us/profile_default.png",
      name: "Beatriz Lemos",
      description: "IFSP - Campus Campinas",
      lattes: "http://lattes.cnpq.br/",
    ),
    DevInfoWidget(
      imagePath: "assets/images/about_us/profile_default.png",
      name: "Alex T. Kakizaki",
      description: "",
      lattes: "http://lattes.cnpq.br/5020690770878351",
    ),
    DevInfoWidget(
      imagePath: "assets/images/about_us/profile_marcio.jfif",
      name: "Márcio A. Miranda",
      description: "IFSP - Campus Campinas",
      lattes: "http://lattes.cnpq.br/3466690059671752",
    ),
  ];
}
