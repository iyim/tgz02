.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$2;
.super Ljava/lang/Object;
.source "BaikeListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
