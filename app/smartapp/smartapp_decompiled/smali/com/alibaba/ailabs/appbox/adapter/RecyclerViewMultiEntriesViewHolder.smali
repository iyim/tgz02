.class public abstract Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecyclerViewMultiEntriesViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder$SubItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder$SubItem;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# static fields
.field private static SIZE:I


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;->getCount()I

    move-result p1

    sput p1, Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;->SIZE:I

    .line 25
    sget p1, Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;->SIZE:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;->init()V

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "not a multiEntries ,please use T extends RecyclerView.ViewHolder"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private init()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;->items:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;->items:Ljava/util/ArrayList;

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const/4 v0, 0x0

    .line 39
    :goto_1
    sget v1, Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;->SIZE:I

    if-ge v0, v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;->findItemView(Landroid/view/View;I)Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder$SubItem;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract findItemView(Landroid/view/View;I)Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder$SubItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation
.end method

.method protected abstract getCount()I
.end method

.method public getItem(I)Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder$SubItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder$SubItem;

    return-object p1
.end method
