.class final enum Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod$2;
.super Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod;
.source "MyTBVideoEmbedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 673
    invoke-direct {p0, p1, p2, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod;-><init>(Ljava/lang/String;ILandroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public doSomething(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2

    .line 677
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string/jumbo v0, "time"

    .line 678
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 680
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    .line 681
    invoke-static {p1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$200(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)Lcom/taobao/avplayer/TBDWInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 682
    invoke-static {p1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$200(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)Lcom/taobao/avplayer/TBDWInstance;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/taobao/avplayer/TBDWInstance;->seekTo(I)V

    goto :goto_0

    .line 683
    :cond_0
    invoke-static {p1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$300(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 684
    invoke-static {p1}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;->access$300(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;)Lcom/taobao/avplayer/TBHighPerformanceDWInstance;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/taobao/avplayer/TBHighPerformanceDWInstance;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p3, :cond_4

    if-eqz p1, :cond_3

    .line 694
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_2

    .line 696
    :cond_3
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    :cond_4
    :goto_2
    return v1
.end method
