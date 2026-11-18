.class public Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemHolder;
.super Lcom/alibaba/ailabs/searchbox/adapter/vh/AppSearchBaseViewHolder;
.source "SearchItemHolder.java"


# instance fields
.field private itemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/AppSearchBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemHolder;->initView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemHolder;->itemViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemHolder;->itemViews:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rl_search_sub_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getIdByStringName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;

    invoke-direct {v2, v1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;-><init>(Landroid/view/View;)V

    .line 32
    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemHolder;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemView;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchItemHolder;->itemViews:Ljava/util/ArrayList;

    return-object v0
.end method
