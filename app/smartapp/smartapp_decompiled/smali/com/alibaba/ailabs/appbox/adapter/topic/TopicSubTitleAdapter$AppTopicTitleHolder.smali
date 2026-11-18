.class Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder;
.super Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;
.source "TopicSubTitleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppTopicTitleHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder$SubItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder<",
        "Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder$SubItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;-><init>(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public bridge synthetic findItemView(Landroid/view/View;I)Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder$SubItem;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder;->findItemView(Landroid/view/View;I)Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder$SubItem;

    move-result-object p1

    return-object p1
.end method

.method public findItemView(Landroid/view/View;I)Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder$SubItem;
    .locals 0

    .line 54
    new-instance p1, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder$SubItem;

    invoke-direct {p1}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder$SubItem;-><init>()V

    .line 55
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder;->itemView:Landroid/view/View;

    iput-object p2, p1, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder$SubItem;->itemViewRoot:Landroid/view/View;

    return-object p1
.end method

.method protected getCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
