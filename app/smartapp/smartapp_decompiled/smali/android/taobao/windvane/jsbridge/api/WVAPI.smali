.class public Landroid/taobao/windvane/jsbridge/api/WVAPI;
.super Ljava/lang/Object;
.source "WVAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/jsbridge/api/WVAPI$PluginName;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setup()V
    .locals 3

    .line 32
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->init()V

    .line 33
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVBase;

    const-string v1, "Base"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 34
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVLocation;

    const-string v1, "WVLocation"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 35
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVMotion;

    const-string v1, "WVMotion"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 36
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVCookie;

    const-string v1, "WVCookie"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 37
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVCamera;

    const-string v1, "WVCamera"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 38
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVUI;

    const-string v1, "WVUI"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 39
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVNotification;

    const-string v1, "WVNotification"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 40
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVNetwork;

    const-string v1, "WVNetwork"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVUIToast;

    const-string v1, "WVUIToast"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 42
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVUIDialog;

    const-string v1, "WVUIDialog"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 43
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVUIActionSheet;

    const-string v1, "WVUIActionSheet"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 44
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVContacts;

    const-string v1, "WVContacts"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVReporter;

    const-string v1, "WVReporter"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 46
    const-class v0, Landroid/taobao/windvane/standardmodal/WVStandardEventCenter;

    const-string v1, "WVStandardEventCenter"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 47
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVFile;

    const-string v1, "WVFile"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 48
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVScreen;

    const-string v1, "WVScreen"

    invoke-static {v1, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 49
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVNativeDetector;

    const/4 v1, 0x1

    const-string v2, "WVNativeDetector"

    invoke-static {v2, v0, v1}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 50
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVBluetooth;

    const-string v2, "WVBluetooth"

    invoke-static {v2, v0, v1}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 51
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVBroadcastChannel;

    const-string v2, "WVBroadcast"

    invoke-static {v2, v0, v1}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 52
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVPrefetch;

    const-string v2, "Prefetch"

    invoke-static {v2, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 53
    const-class v0, Landroid/taobao/windvane/jsbridge/api/WVImage;

    const-string v2, "WVImage"

    invoke-static {v2, v0}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    const-class v0, Landroid/taobao/windvane/embed/EmbedViewDemo;

    const-string v2, "demo"

    invoke-static {v2, v0, v1}, Landroid/taobao/windvane/embed/WVEVManager;->registerEmbedView(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 56
    const-class v0, Landroid/taobao/windvane/embed/Empty;

    const-string v2, "empty"

    invoke-static {v2, v0, v1}, Landroid/taobao/windvane/embed/WVEVManager;->registerEmbedView(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method
