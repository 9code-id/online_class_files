import 'package:hyper_ui/core.dart';

class DashboardService {
  List scaffolds = [
    {
      "label": "Basic",
      "view": SfBasicView(),
    },
    {
      "label": "Drawer",
      "view": SfDrawerView(),
    },
    {
      "label": "Sliver",
      "view": SfSliverView(),
    },
  ];

  List commonWidgets = [
    {
      "label": "Container",
      "view": CwContainerView(),
    },
    {
      "label": "Text",
      "view": CwTextView(),
    },
    {
      "label": "Icon",
      "view": CwIconView(),
    },
    {
      "label": "Image",
      "view": CwImageView(),
    },
    {
      "label": "CircleAvatar",
      "view": CwCircleAvatarView(),
    },
    {
      "label": "ListTile",
      "view": CwListTileView(),
    },
    {
      "label": "Card",
      "view": CwCardView(),
    },
    {
      "label": "Button",
      "view": CwButtonView(),
    },
  ];
  List layouts = [
    {
      "label": "Row",
      "view": LoRowView(),
    },
    {
      "label": "Column",
      "view": LoColumnView(),
    },
    {
      "label": "Wrap",
      "view": LoWrapView(),
    },
    {
      "label": "Stack",
      "view": LoStackView(),
    },
  ];

  List navigations = [
    {
      "label": "Bottom Navigationbar",
      "view": NavBottomNavigationbarView(),
    },
    {
      "label": "TabBar",
      "view": NavTabbarView(),
    },
  ];
  List listViews = [
    {
      "label": "Basic",
      "view": LvBasicView(),
    },
    {
      "label": "Row",
      "view": LvRowView(),
    },
    {
      "label": "Cart",
      "view": LvCartView(),
    },
    {
      "label": "Actions",
      "view": LvActionsView(),
    },
  ];

  List gridViews = [
    {
      "label": "Basic",
      "view": GvBasicView(),
    },
    {
      "label": "Row",
      "view": GvRowView(),
    },
    {
      "label": "Cart",
      "view": GvCartView(),
    },
    {
      "label": "Actions",
      "view": GvActionsView(),
    },
  ];

  List forms = [
    {
      "label": "Basic",
      "view": FmBasicView(),
    },
    {
      "label": "Login",
      "view": FmLoginView(),
    },
    {
      "label": "Register",
      "view": FmRegisterView(),
    },
    {
      "label": "Forgot Password",
      "view": FmForgotPasswordView(),
    },
    {
      "label": "Product Form",
      "view": FmProductFormView(),
    },
    {
      "label": "Customer Form",
      "view": FmCustomerFormView(),
    },
    {
      "label": "Supplier Form",
      "view": FmSupplierFormView(),
    },
  ];

  List charts = [
    {
      "label": "Line",
      "view": CtLineView(),
    },
    {
      "label": "Spline",
      "view": CtSplineView(),
    },
    {
      "label": "Area",
      "view": CtAreaView(),
    },
    {
      "label": "Bar Horizontal",
      "view": CtBarHorizontalView(),
    },
    {
      "label": "Bar Vertical",
      "view": CtBarVerticalView(),
    },
    {
      "label": "Bubble",
      "view": CtBubbleView(),
    },
    {
      "label": "Scatter",
      "view": CtScatterView(),
    },
    {
      "label": "Pie",
      "view": CtPieView(),
    },
  ];

  List appViewsAuth = [
    {
      "label": "Login",
      "view": SfBasicView(),
    },
    {
      "label": "Register",
      "view": SfDrawerView(),
    },
    {
      "label": "Forgot Password",
      "view": SfSliverView(),
    },
  ];
  List appViewsDashboard = [
    {
      "label": "Dashboard 1",
      "view": SfBasicView(),
    },
    {
      "label": "Dashboard 2",
      "view": SfDrawerView(),
    },
    {
      "label": "Dashboard 3",
      "view": SfSliverView(),
    },
  ];
  List appViewsList = [
    {
      "label": "EList1",
      "view": SfBasicView(),
    },
    {
      "label": "EList2",
      "view": SfDrawerView(),
    },
    {
      "label": "EList3",
      "view": SfSliverView(),
    },
    {
      "label": "EList4",
      "view": SfBasicView(),
    },
    {
      "label": "EList5",
      "view": SfDrawerView(),
    },
    {
      "label": "EList6",
      "view": SfSliverView(),
    },
    {
      "label": "EList7",
      "view": SfBasicView(),
    },
    {
      "label": "EList8",
      "view": SfDrawerView(),
    },
    {
      "label": "EList9",
      "view": SfSliverView(),
    },
    {
      "label": "EList10",
      "view": SfSliverView(),
    },
  ];

  List appViewsDetail = [
    {
      "label": "Detail1",
      "view": SfBasicView(),
    },
    {
      "label": "Detail2",
      "view": SfDrawerView(),
    },
    {
      "label": "Detail3",
      "view": SfDrawerView(),
    },
    {
      "label": "Detail4",
      "view": SfDrawerView(),
    },
    {
      "label": "Detail5",
      "view": SfDrawerView(),
    },
  ];
  List appViewsCategories = [
    {
      "label": "CategoryList 1",
      "view": SfBasicView(),
    },
    {
      "label": "CategoryList 2",
      "view": SfDrawerView(),
    },
  ];
  List appViewsCarts = [
    {
      "label": "Cart 1",
      "view": SfBasicView(),
    },
    {
      "label": "Cart 2",
      "view": SfDrawerView(),
    },
  ];
  List miniAppsBlog = [
    {
      "label": "Login",
      "view": SfBasicView(),
    },
    {
      "label": "Dashboard",
      "view": SfDrawerView(),
    },
    {
      "label": "Blog Detail",
      "view": SfSliverView(),
    },
    {
      "label": "Favorite",
      "view": SfSliverView(),
    },
    {
      "label": "Profile",
      "view": SfSliverView(),
    },
  ];
}
