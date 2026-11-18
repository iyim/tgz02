.class final Landroid/taobao/windvane/WindVaneSDK$2;
.super Landroid/taobao/windvane/config/WVConfigHandler;
.source "WindVaneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/WindVaneSDK;->initConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Landroid/taobao/windvane/config/WVConfigHandler;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public update(Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigUpdateCallback;)V
    .locals 2

    .line 190
    invoke-static {}, Landroid/taobao/windvane/config/WVCommonConfig;->getInstance()Landroid/taobao/windvane/config/WVCommonConfig;

    move-result-object v0

    invoke-virtual {p0}, Landroid/taobao/windvane/WindVaneSDK$2;->getSnapshotN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/taobao/windvane/config/WVCommonConfig;->updateCommonRule(Landroid/taobao/windvane/config/WVConfigUpdateCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
