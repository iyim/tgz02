.class public abstract Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "QuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutId:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->mList:Ljava/util/List;

    .line 35
    iput p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->mLayoutId:I

    return-void
.end method


# virtual methods
.method public abstract dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->mView:Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;I)V
    .locals 1
    .param p1    # Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->dataBind(Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 52
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->mLayoutId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->mView:Landroid/view/View;

    .line 53
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->mView:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->mList:Ljava/util/List;

    .line 41
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/adapter/QuickAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
