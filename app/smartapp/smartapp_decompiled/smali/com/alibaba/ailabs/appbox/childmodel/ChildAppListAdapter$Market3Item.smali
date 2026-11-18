.class Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter$Market3Item;
.super Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;
.source "ChildAppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Market3Item"
.end annotation


# instance fields
.field itemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 100
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter$Market3Item;->initView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter$Market3Item;->itemViews:Ljava/util/ArrayList;

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter$Market3Item;->itemViews:Ljava/util/ArrayList;

    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public bindData(Ljava/lang/Object;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListAdapter$Market3Item;->itemViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bindData(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;)V

    return-void
.end method
