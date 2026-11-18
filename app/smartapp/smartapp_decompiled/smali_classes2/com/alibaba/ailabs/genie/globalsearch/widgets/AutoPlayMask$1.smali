.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;
.super Ljava/lang/Object;
.source "AutoPlayMask.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$OnCountdownProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->setGroupType(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;

.field final synthetic val$cancelButton:Landroid/widget/Button;

.field final synthetic val$groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

.field final synthetic val$itemBean:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;Landroid/widget/Button;Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->val$cancelButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->val$groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->val$itemBean:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(II)V
    .locals 3

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->val$cancelButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d6\u6d88("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v2, p2, 0x19

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_0

    .line 99
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->getInstance()Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->val$groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupTypeEnum()Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->val$itemBean:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->jumpToTarget(Landroid/content/Context;Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;)V

    .line 100
    new-instance p1, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;-><init>()V

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->val$itemBean:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getExtend()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withExtendInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object p1

    const-string p2, "item"

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withClickType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->val$groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    .line 101
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getGroupType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->withGroupType(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTMap;->build()Ljava/util/HashMap;

    move-result-object p1

    .line 102
    sget-object p2, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/SearchResultCard;->traceId:Ljava/lang/String;

    const-string v0, "trace_id"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "tab_name"

    const-string v0, "all"

    .line 103
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->val$itemBean:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;->getScm()Ljava/lang/String;

    move-result-object p2

    const-string v0, "scm"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->val$groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getExtend()Ljava/lang/String;

    move-result-object p2

    const-string v0, "card_extend"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->searchResPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->getPageSpm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->val$groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getRank()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->val$groupBean:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->getDataList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask$1;->val$itemBean:Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "spm-cnt"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object p2, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->searchResPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->clickUT(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
