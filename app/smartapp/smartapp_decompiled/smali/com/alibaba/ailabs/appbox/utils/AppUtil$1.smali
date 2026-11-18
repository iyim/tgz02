.class final Lcom/alibaba/ailabs/appbox/utils/AppUtil$1;
.super Ljava/lang/Object;
.source "AppUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openAppDetail(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

.field final synthetic val$from:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/AppUtil$1;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/utils/AppUtil$1;->val$from:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 511
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/utils/AppUtil$1;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/utils/AppUtil$1;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/AppUtil$1;->val$from:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "openAppDetail"

    invoke-static {v2, v0, v1}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
