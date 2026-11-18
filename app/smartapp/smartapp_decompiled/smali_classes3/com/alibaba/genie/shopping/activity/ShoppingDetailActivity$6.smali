.class Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$6;
.super Ljava/lang/Object;
.source "ShoppingDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->onGetGoodDetailInfoSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 448
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$200(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 449
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$300(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 450
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    iget-object p1, p1, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->mBaseHandler:Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;

    new-instance v0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$6$1;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$6$1;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$6;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$400(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Lcom/taobao/android/tbsku/TBXSkuCore;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 458
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$400(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Lcom/taobao/android/tbsku/TBXSkuCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/tbsku/TBXSkuCore;->showSku()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 460
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 464
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    const-string v0, "\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
