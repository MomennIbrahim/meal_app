import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals_app/features/home/presentation/views/widgets/custom_text_form_field.dart';
import 'package:meals_app/features/search/presentation/views/widgets/list_view_search.dart';
import 'package:meals_app/features/search/presentation/views/widgets/search_item.dart';
import 'package:meals_app/features/search/presentation/views/widgets/search_text_field.dart';
import '../../../../../core/utils/styles.dart';
import '../../controller/search_cubit.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
    padding: EdgeInsets.symmetric(vertical: 50.0),
    child: Column(
      children: [
        SearchTextFormField(),
        SizedBox(height: 10.0,),
        Expanded(child: ListViewSearch()),
      ],
    ),
      );
  }
}
