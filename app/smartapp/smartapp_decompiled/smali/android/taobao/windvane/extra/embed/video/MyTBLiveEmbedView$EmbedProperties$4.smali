.class final enum Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$4;
.super Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;
.source "MyTBLiveEmbedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, p1, p2, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;-><init>(Ljava/lang/String;ILandroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$1;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public setValue(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Ljava/lang/Object;Z)Z
    .locals 1

    .line 240
    invoke-super {p0, p1, p2, p3}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->setValue(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Ljava/lang/Object;Z)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 244
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :catch_0
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;->setScenarioType(I)V

    const/4 p1, 0x1

    return p1
.end method
