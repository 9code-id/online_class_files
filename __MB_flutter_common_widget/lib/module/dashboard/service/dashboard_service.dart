import 'package:flutter_common_widget/core.dart';

class DashboardService {
  List menuList = [
    {
      "label": "Scaffold",
      "view": const ScaffoldExerciseView(),
    },
    {
      "label": "Container",
      "view": const ContainerExerciseView(),
    },
    {
      "label": "Button",
      "view": const ButtonExerciseView(),
    },
    {
      "label": "Icon",
      "view": const IconExerciseView(),
    },
    {
      "label": "Image",
      "view": const ImageExerciseView(),
    },
    {
      "label": "CircleAvatar",
      "view": const CircleAvatarExerciseView(),
    },
    {
      "label": "ListTile",
      "view": const ListTileExerciseView(),
    },
    {
      "label": "Card",
      "view": const CardExerciseView(),
    },
    {
      "label": "Row",
      "view": const RowExerciseView(),
    },
    {
      "label": "Column",
      "view": const ColumnExerciseView(),
    },
    {
      "label": "Wrap",
      "view": const WrapExerciseView(),
    },
    {
      "label": "Stack",
      "view": const StackExerciseView(),
    },
    {
      "label": "GridView",
      "view": const GridViewExerciseView(),
    },
    {
      "label": "ListView",
      "view": const ListViewExerciseView(),
    },
    {
      "label": "StaggeredGridView",
      "view": const StaggeredGridViewExerciseView(),
    },
    {
      "label": "Chart",
      "view": const ChartExerciseView(),
    },
    {
      "label": "Map",
      "view": const MapExerciseView(),
    }
  ];
}
