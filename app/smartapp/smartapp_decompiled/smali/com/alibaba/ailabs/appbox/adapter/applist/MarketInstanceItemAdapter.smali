.class public Lcom/alibaba/ailabs/appbox/adapter/applist/MarketInstanceItemAdapter;
.super Ljava/lang/Object;
.source "MarketInstanceItemAdapter.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/adapter/applist/MarketInstanceItemAdapter$MarketInstanceViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter<",
        "Lcom/alibaba/ailabs/appbox/adapter/applist/MarketInstanceItemAdapter$MarketInstanceViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isForViewType(Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;I)Z
    .locals 0

    .line 20
    iget p1, p1, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;->type:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 0

    .line 15
    check-cast p1, Lcom/alibaba/ailabs/appbox/adapter/applist/MarketInstanceItemAdapter$MarketInstanceViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/appbox/adapter/applist/MarketInstanceItemAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/appbox/adapter/applist/MarketInstanceItemAdapter$MarketInstanceViewHolder;II)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/appbox/adapter/applist/MarketInstanceItemAdapter$MarketInstanceViewHolder;II)V
    .locals 1

    .line 30
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MarketInstanceItemAdapter --> "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/utils/DebugLog;->d(Ljava/lang/String;)V

    .line 31
    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/adapter/applist/MarketInstanceItemAdapter$MarketInstanceViewHolder;->iv_app_list_new:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->item_applist_market_instance:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 25
    new-instance p2, Lcom/alibaba/ailabs/appbox/adapter/applist/MarketInstanceItemAdapter$MarketInstanceViewHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/appbox/adapter/applist/MarketInstanceItemAdapter$MarketInstanceViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
