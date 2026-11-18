.class public Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder;
.super Lcom/alibaba/ailabs/searchbox/adapter/vh/AppSearchBaseViewHolder;
.source "SearchMarketInstanceHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/AppSearchBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder;->initView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 28
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_instance_to_market:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder$1;-><init>(Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchMarketInstanceHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
