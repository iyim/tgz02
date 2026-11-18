.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$5;
.super Ljava/lang/Object;
.source "CurrentPlayListFragment.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->initObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 300
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$1102(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;I)I

    .line 301
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$5;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;->access$1100(Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/GridviewAdapter;->setTotalCount(I)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 297
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/CurrentPlayListFragment$5;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
