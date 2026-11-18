.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$3;
.super Ljava/lang/Object;
.source "BaikeUniversalFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 137
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;

    invoke-direct {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;-><init>()V

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->getImageUrlList()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "image_list"

    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 143
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextScaleSubFragment;->setArguments(Landroid/os/Bundle;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity replaceFragment fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaikeUniversalFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeUniversalFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 147
    sget v1, Lcom/alibaba/ailabs/basedomain/R$id;->root_layout:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 148
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
