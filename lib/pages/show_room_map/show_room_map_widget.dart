import '/components/drawer_u_i/drawer_u_i_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'show_room_map_model.dart';
export 'show_room_map_model.dart';

class ShowRoomMapWidget extends StatefulWidget {
  const ShowRoomMapWidget({super.key});

  @override
  State<ShowRoomMapWidget> createState() => _ShowRoomMapWidgetState();
}

class _ShowRoomMapWidgetState extends State<ShowRoomMapWidget> {
  late ShowRoomMapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShowRoomMapModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'ShowRoomMap'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.drawerUIModel,
            updateCallback: () => setState(() {}),
            child: const DrawerUIWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: FlutterFlowTheme.of(context).primary,
            buttonSize: 40.0,
            fillColor: FlutterFlowTheme.of(context).primary,
            icon: Icon(
              Icons.menu_sharp,
              color: FlutterFlowTheme.of(context).primaryBtnText,
              size: 24.0,
            ),
            onPressed: () async {
              logFirebaseEvent('SHOW_ROOM_MAP_PAGE_menu_sharp_ICN_ON_TAP');
              logFirebaseEvent('IconButton_drawer');
              scaffoldKey.currentState!.openDrawer();
              logFirebaseEvent('IconButton_google_analytics_event');
              logFirebaseEvent('menu_button_ontap');
            },
          ),
          title: Text(
            'Conference Floor Plan',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Lato',
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('SHOW_ROOM_MAP_PAGE_Image_jkdut1xs_ON_TAP');
                  logFirebaseEvent('Image_expand_image');
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: FlutterFlowExpandedImageView(
                        image: Image.asset(
                          'assets/images/aria-map.jpg',
                          fit: BoxFit.contain,
                        ),
                        allowRotation: true,
                        tag: 'imageTag',
                        useHeroAnimation: true,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: 'imageTag',
                  transitionOnUserGestures: true,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/aria-map.jpg',
                      width: double.infinity,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
