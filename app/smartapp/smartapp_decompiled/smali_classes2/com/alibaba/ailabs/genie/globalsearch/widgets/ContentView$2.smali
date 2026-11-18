.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$2;
.super Ljava/lang/Object;
.source "ContentView.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView$OnExposedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->setDataList(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemExposed(II)V
    .locals 2

    :goto_0
    if-gt p1, p2, :cond_1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onItemExposed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/SearchLog;->ut(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->access$200(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 74
    instance-of v1, v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;

    if-eqz v1, :cond_0

    .line 75
    nop

    nop

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;->access$200(Lcom/alibaba/ailabs/genie/globalsearch/widgets/ContentView;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/UTRecyclerView;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->exposedCard(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
