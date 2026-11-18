.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;
.super Ljava/lang/Object;
.source "BaikeUniversalFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

.field final synthetic val$image:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;->val$image:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->access$600(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->access$700(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BaikeUniversalFragment"

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImageViewLayout image:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;->val$image:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isVisible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    .line 262
    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;->val$image:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->access$700(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->setToView(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;->val$image:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$7;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->access$600(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->setToViewBg(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
