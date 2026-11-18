.class Lcom/alibaba/ailabs/appbox/adapter/topic/TopicApplistAdapter$AppTopicTitleHolder;
.super Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder;
.source "TopicApplistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/adapter/topic/TopicApplistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppTopicTitleHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/adapter/topic/TopicApplistAdapter$AppTopicTitleHolder$SubItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/appbox/adapter/RecyclerViewMultiEntriesViewHolder<",
        "Lcom/alibaba/ailabs/appbox/adapter/topic/TopicApplistAdapter$AppTopicTitleHolder$SubItem;",
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
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicApplistAdapter$AppTopicTitleHolder;->findItemView(Landroid/view/View;I)Lcom/alibaba/ailabs/appbox/adapter/topic/TopicApplistAdapter$AppTopicTitleHolder$SubItem;

    move-result-object p1

    return-object p1
.end method

.method public findItemView(Landroid/view/View;I)Lcom/alibaba/ailabs/appbox/adapter/topic/TopicApplistAdapter$AppTopicTitleHolder$SubItem;
    .locals 4

    .line 54
    new-instance v0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicApplistAdapter$AppTopicTitleHolder$SubItem;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicApplistAdapter$AppTopicTitleHolder$SubItem;-><init>()V

    .line 56
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rl_app_topic_app_item_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, p2, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/alibaba/ailabs/appbox/adapter/topic/TopicApplistAdapter$AppTopicTitleHolder$SubItem;->itemViewRoot:Landroid/view/View;

    return-object v0
.end method

.method protected getCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
