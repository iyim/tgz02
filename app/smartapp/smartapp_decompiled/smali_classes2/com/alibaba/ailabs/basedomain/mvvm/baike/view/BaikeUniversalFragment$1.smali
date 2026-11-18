.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$1;
.super Ljava/lang/Object;
.source "BaikeUniversalFragment.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;)V
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/LinkItemView;->setData(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 110
    check-cast p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$1;->onChanged(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;)V

    return-void
.end method
