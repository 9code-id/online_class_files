
import 'package:flutter/material.dart';
import 'package:tutorial_responsive_adaptive_state_management_service_locator/core.dart';
import '../view/profile_view.dart';

class ProfileController extends State<ProfileView> {
    static late ProfileController instance;
    late ProfileView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    