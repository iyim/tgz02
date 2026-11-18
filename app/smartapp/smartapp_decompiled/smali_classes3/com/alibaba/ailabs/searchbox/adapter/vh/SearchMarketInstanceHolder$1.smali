.class Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder$1;
.super Ljava/lang/Object;
.source "SearchMarketInstanceHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder$1;->this$0:Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 31
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "SearchMarketInstanceHolder@marketInstanceClick"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 32
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "title"

    const-string v1, "marketInstanceClicl"

    .line 33
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "click"

    .line 34
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/searchbox/report/SearchReportUtil;->reportMarketInstanceEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
