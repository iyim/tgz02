.class Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;
.super Ljava/lang/Object;
.source "TBErrorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/TBErrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoToReportListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/extend/component/TBErrorView;


# direct methods
.method private constructor <init>(Lcom/taobao/uikit/extend/component/TBErrorView;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;->this$0:Lcom/taobao/uikit/extend/component/TBErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/uikit/extend/component/TBErrorView;Lcom/taobao/uikit/extend/component/TBErrorView$1;)V
    .locals 0

    .line 450
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;-><init>(Lcom/taobao/uikit/extend/component/TBErrorView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const-string p1, ","

    const-string v0, "https://market.m.taobao.com/markets/client/feedback_detail?wh_weex=true&seCate=BUG&cont=%1s&errCode=%2s&fromPage=%3s&error=%4s"

    .line 456
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;->this$0:Lcom/taobao/uikit/extend/component/TBErrorView;

    invoke-static {v1}, Lcom/taobao/uikit/extend/component/TBErrorView;->access$100(Lcom/taobao/uikit/extend/component/TBErrorView;)Lcom/taobao/uikit/extend/component/error/Error;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;->this$0:Lcom/taobao/uikit/extend/component/TBErrorView;

    invoke-static {v1}, Lcom/taobao/uikit/extend/component/TBErrorView;->access$100(Lcom/taobao/uikit/extend/component/TBErrorView;)Lcom/taobao/uikit/extend/component/error/Error;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;->this$0:Lcom/taobao/uikit/extend/component/TBErrorView;

    invoke-static {v1}, Lcom/taobao/uikit/extend/component/TBErrorView;->access$100(Lcom/taobao/uikit/extend/component/TBErrorView;)Lcom/taobao/uikit/extend/component/error/Error;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/uikit/extend/component/error/Error;->errorCode:Ljava/lang/String;

    move-object v2, v1

    .line 459
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;->this$0:Lcom/taobao/uikit/extend/component/TBErrorView;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 462
    :try_start_0
    new-array v8, v7, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;->this$0:Lcom/taobao/uikit/extend/component/TBErrorView;

    invoke-static {v10}, Lcom/taobao/uikit/extend/component/TBErrorView;->access$200(Lcom/taobao/uikit/extend/component/TBErrorView;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;->this$0:Lcom/taobao/uikit/extend/component/TBErrorView;

    invoke-static {v10}, Lcom/taobao/uikit/extend/component/TBErrorView;->access$300(Lcom/taobao/uikit/extend/component/TBErrorView;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    aput-object v2, v8, v5

    aput-object v1, v8, v4

    iget-object v9, p0, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;->this$0:Lcom/taobao/uikit/extend/component/TBErrorView;

    invoke-static {v9}, Lcom/taobao/uikit/extend/component/TBErrorView;->access$100(Lcom/taobao/uikit/extend/component/TBErrorView;)Lcom/taobao/uikit/extend/component/error/Error;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 465
    :catch_0
    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;->this$0:Lcom/taobao/uikit/extend/component/TBErrorView;

    invoke-static {v9}, Lcom/taobao/uikit/extend/component/TBErrorView;->access$200(Lcom/taobao/uikit/extend/component/TBErrorView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;->this$0:Lcom/taobao/uikit/extend/component/TBErrorView;

    invoke-static {p1}, Lcom/taobao/uikit/extend/component/TBErrorView;->access$300(Lcom/taobao/uikit/extend/component/TBErrorView;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v6

    aput-object v2, v7, v5

    aput-object v1, v7, v4

    const-string p1, "empty"

    aput-object p1, v7, v3

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 467
    :goto_1
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBErrorView$GoToReportListener;->this$0:Lcom/taobao/uikit/extend/component/TBErrorView;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/TBErrorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/nav/Nav;->from(Landroid/content/Context;)Lcom/taobao/android/nav/Nav;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/android/nav/Nav;->toUri(Ljava/lang/String;)Z

    return-void
.end method
