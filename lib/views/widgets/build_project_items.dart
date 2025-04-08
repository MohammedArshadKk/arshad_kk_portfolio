 import 'package:animate_do/animate_do.dart';
import 'package:arshad_kk_portfolio/view_model/projects_list.dart';
import 'package:arshad_kk_portfolio/views/widgets/build_project_content.dart';
import 'package:arshad_kk_portfolio/views/widgets/build_project_image.dart';
import 'package:flutter/material.dart';

List<Widget> buildProjectItems({required bool isLarge}) {
   

    return List.generate(
      projects.length, 
      (index) => FadeInUp(
        duration: Duration(milliseconds: 800 + (index * 200)),
        child: Container(
          margin: const EdgeInsets.only(bottom: 60),
          child: isLarge
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (index % 2 == 0)
                      buildProjectImage(projects[index]['image'] as String),
                    Expanded(
                      child: buildProjectContent(
                        projects[index]['title'] as String,
                        projects[index]['description'] as String,
                        projects[index]['tech'] as List<String>,
                        projects[index]['link'] as String,
                        alignment: index % 2 == 0
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                      ),
                    ),
                    if (index % 2 != 0)
                      buildProjectImage(projects[index]['image'] as String),  
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildProjectImage(projects[index]['image'] as String,
                        isSmall: true),
                    const SizedBox(height: 20),
                    buildProjectContent(
                      projects[index]['title'] as String,
                      projects[index]['description'] as String,
                      projects[index]['tech'] as List<String>,
                      projects[index]['link'] as String,
                      alignment: CrossAxisAlignment.start,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
