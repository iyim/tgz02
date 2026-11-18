.class public Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter;
.super Ljava/lang/Object;
.source "TopicSubTitleAdapter.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/appbox/adapter/IDelegateAdapter<",
        "Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final COUNT_SUB:I = 0x1


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

    .line 21
    iget p1, p1, Lcom/alibaba/ailabs/appbox/bean/ItemBaseData;->type:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 0

    .line 15
    check-cast p1, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder;II)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder;II)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/alibaba/ailabs/appbox/R$layout;->item_topic_sub_title:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 27
    new-instance p2, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder;

    invoke-direct {p2, p1}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicSubTitleAdapter$AppTopicTitleHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
