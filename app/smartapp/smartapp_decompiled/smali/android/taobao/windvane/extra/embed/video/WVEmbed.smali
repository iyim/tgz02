.class public Landroid/taobao/windvane/extra/embed/video/WVEmbed;
.super Ljava/lang/Object;
.source "WVEmbed.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static init()V
    .locals 3

    .line 7
    const-class v0, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;

    const/4 v1, 0x1

    const-string/jumbo v2, "wvvideo"

    invoke-static {v2, v0, v1}, Landroid/taobao/windvane/embed/WVEVManager;->registerEmbedView(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 8
    const-class v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;

    const-string/jumbo v2, "wvlivevideo"

    invoke-static {v2, v0, v1}, Landroid/taobao/windvane/embed/WVEVManager;->registerEmbedView(Ljava/lang/String;Ljava/lang/Class;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
