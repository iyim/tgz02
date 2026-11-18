.class final enum Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod$11;
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

    .line 815
    invoke-direct {p0, p1, p2, v0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$JSMethod;-><init>(Ljava/lang/String;ILandroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$1;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public doSomething(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 2

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    .line 818
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 822
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    return p3

    :cond_1
    const-string v0, "key"

    .line 827
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "value"

    .line 828
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_4

    if-nez p2, :cond_2

    goto :goto_1

    .line 835
    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;->valueOf(Ljava/lang/String;)Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    return p3

    :cond_3
    const/4 p3, 0x1

    .line 843
    invoke-virtual {v0, p1, p2, p3}, Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView$EmbedProperties;->setValue(Landroid/taobao/windvane/extra/embed/video/MyTBVideoEmbedView;Ljava/lang/Object;Z)Z

    :cond_4
    :goto_1
    return p3
.end method
