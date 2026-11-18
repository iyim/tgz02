.class public abstract Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private i:I

.field private j:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->i:I

    .line 24
    iput v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->j:I

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract bind(Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;I)V
.end method

.method public abstract getLayout()I
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    check-cast p1, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;I)V
    .locals 2
    .param p1    # Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->j:I

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->bind(Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 39
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->getLayout()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 40
    iget p2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->i:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->i:I

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateViewHolder:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseAdapter;->i:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BaseAdapter"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance p2, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
