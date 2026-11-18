.class Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2$1;
.super Lcom/alibaba/fastjson/JSONObject;
.source "ShoppingDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2;)V
    .locals 1

    .line 158
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2$1;->this$1:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string p1, "bottom_bar_mode"

    const-string v0, "CONFIRM_BUYNOW"

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$2$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
