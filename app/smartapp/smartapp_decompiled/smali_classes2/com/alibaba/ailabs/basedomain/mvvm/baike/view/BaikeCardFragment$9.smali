.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$9;
.super Ljava/lang/Object;
.source "BaikeCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$9;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaikeCardFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$9;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->access$1000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$9;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->access$1100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$9;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->access$1200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 343
    :cond_0
    check-cast p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->click()V

    :cond_1
    return-void
.end method
