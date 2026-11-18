.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$5;
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

    .line 150
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->access$400(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;->access$300(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/BaikeCardFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeCardViewModel;->jumpToUniversalPage(Landroid/content/Context;)V

    return-void
.end method
