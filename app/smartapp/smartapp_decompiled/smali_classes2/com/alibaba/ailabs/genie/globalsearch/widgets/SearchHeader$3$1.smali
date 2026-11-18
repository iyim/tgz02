.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3$1;
.super Ljava/lang/Object;
.source "SearchHeader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->lambda$run$19(Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;

.field final synthetic val$dataList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;Ljava/util/List;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3$1;->this$1:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3$1;->val$dataList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3$1;->val$dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3$1;->this$1:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader;->searchSuggest:Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/FlowLayout;->getChildCountVisible()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 235
    sget-object v2, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->inputPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    new-instance v3, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    invoke-direct {v3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;-><init>()V

    const-string v4, "guess_query"

    .line 236
    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withExpType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/SearchHeader$3$1;->val$dataList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtend()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withExtendInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->build()Ljava/util/HashMap;

    move-result-object v3

    .line 235
    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->exposeUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
