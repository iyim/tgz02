.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$3;
.super Ljava/lang/Object;
.source "BaikeCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 133
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
