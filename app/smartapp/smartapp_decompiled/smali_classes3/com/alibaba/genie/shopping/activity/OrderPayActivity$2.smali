.class Lcom/alibaba/genie/shopping/activity/OrderPayActivity$2;
.super Ljava/lang/Object;
.source "OrderPayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 241
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$300(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$300(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->getGoodInfo()Lcom/alibaba/genie/shopping/bean/GoodInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p1, Lcom/alibaba/genie/shopping/bean/GoodInfo;->title:Ljava/lang/String;

    .line 245
    iget-object p1, p1, Lcom/alibaba/genie/shopping/bean/GoodInfo;->img:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "\u5546\u54c1\u4fe1\u606f"

    const-string p1, ""

    :goto_0
    move-object v4, p1

    move-object v3, v0

    .line 248
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/OrderPayActivity;->access$100(Lcom/alibaba/genie/shopping/activity/OrderPayActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object p1

    iget-object v2, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;->orderCode:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/genie/shopping/activity/OrderPayActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/OrderPayActivity;

    const v6, 0x186aa

    invoke-static/range {v1 .. v6}, Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;->sendPayToPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    return-void
.end method
