.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$6;
.super Ljava/lang/Object;
.source "BaikeCardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->setBgImage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

.field final synthetic val$right:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;I)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$6;->val$right:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->access$500(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->access$400(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$6;->val$right:I

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->getNextImage(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->access$600(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->access$500(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->access$600(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->setToViewBg(Landroid/view/View;Landroid/widget/ImageView;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaikeCardFragment load bg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
