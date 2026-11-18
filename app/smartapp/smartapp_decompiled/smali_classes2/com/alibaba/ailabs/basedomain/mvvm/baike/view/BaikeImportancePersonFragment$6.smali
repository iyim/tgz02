.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$6;
.super Ljava/lang/Object;
.source "BaikeImportancePersonFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->setBgImage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

.field final synthetic val$right:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;I)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$6;->val$right:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->access$400(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$6;->val$right:I

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeImportancePersonViewModel;->getNextImage(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->access$500(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment$6;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;->access$600(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeImportancePersonFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->setToViewBg(Landroid/view/View;Landroid/widget/ImageView;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaikeImportancePersonFragment load bg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
