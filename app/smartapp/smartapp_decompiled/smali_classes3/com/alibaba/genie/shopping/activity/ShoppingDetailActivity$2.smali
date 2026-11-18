.class Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2;
.super Lcom/alibaba/fastjson/JSONObject;
.source "ShoppingDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V
    .locals 1

    .line 156
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :try_start_0
    const-string p1, "sku_bottom"

    .line 158
    new-instance v0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2$1;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2;)V

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
